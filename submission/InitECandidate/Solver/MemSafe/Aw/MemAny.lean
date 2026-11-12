import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.MemSafe.Alloc

set_option autoImplicit false

/-!
# `memcpy` / `memzero` without a size precondition

`foot_memcpy` assumes `N = 0 ∨ D + N ≤ scratchEnd`, only to exclude wrap-around. For the
above-writer rule (`research/notes/band-chain-plan.md`) the length may be any word read from
memory, so here the bound is a *conclusion*: in a good run every store is in the memory domain,
which ends below `domTop`, so `D + I` stays in range step by step.

* `DomBelow X`: the memory domain ends below `domTop`; `domBelow_guestCtx`.
* `AbvR D a`: an aligned cell at or above the one holding byte `D`.
* **`funSpec_memcpyA`**, **`funSpec_memzeroA`**: a good run changes only `AbvR D` cells and
  `N = 0 ∨ D + N ≤ domTop + 64`, from `D ≤ 2^62` alone.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

/-- An upper bound of the memory domain (it extends past `scratchEnd`). -/
def domTop : Nat := 2 ^ 40

/-- The memory domain ends below `domTop`. -/
def DomBelow (X : Ctx 64) : Prop := ∀ a, X.memaddrs a → a.toNat < domTop

theorem domBelow_guestCtx : DomBelow guestCtx := by
  intro a ha
  obtain ⟨i, hi, rfl⟩ := (Compiler.Backend.StackRemove.mem_addresses _ _ _).mp ha
  simp only [Compiler.Backend.StackRemove.bytesInWord, BitVec.toNat_add, BitVec.toNat_mul,
    BitVec.toNat_ofNat]
  simp only [InitE.stackStart, InitE.sourceBase, InitE.ramEnd, InitE.ramStart, InitE.ramSize,
    InitE.stackSize, InitE.globalsWords] at hi ⊢
  unfold domTop
  omega

/-- An aligned cell at or above the cell holding byte `D`. -/
def AbvR (D a : BitVec 64) : Prop := a.toNat % 8 = 0 ∧ D.toNat < a.toNat + 8

/-- A byte store succeeds only on an aligned cell in the domain. -/
theorem storeByte_dom {m m' : Mem} {dom : BitVec 64 → Prop} {inst : DecidablePred dom}
    {be : Bool} {w : BitVec 64} {b : BitVec 8}
    (h : @panMemStoreByteWord8HOL 64 _ m dom inst be w b = some m') : dom (panByteAlignHOL w) := by
  unfold panMemStoreByteWord8HOL at h
  dsimp only at h
  split at h
  · rename_i hd
    exact hd
  · cases h

/-- The state of the loop. -/
def BWA (d n i : MlS) (D N : BitVec 64) (s0 t : State σ) : Prop :=
  t.locals.lookup d = some (.val (.word D)) ∧ t.locals.lookup n = some (.val (.word N)) ∧
    (∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat ≤ N.toNat ∧
      (I.toNat = 0 ∨ D.toNat + I.toNat ≤ domTop + 64)) ∧
    t.globals = s0.globals ∧ ModifiesOnly (AbvR D) s0.memory t.memory

theorem domTop_small : domTop + 64 < 2 ^ 62 := by decide

/-- One store at `d + i + c`: stays in `AbvR D`, and lands in the domain. -/
theorem hoareG_stOA (hA : AlignedDom X) (hT : DomBelow X) {d n i : MlS} {D N I : BitVec 64}
    {s0 : State σ} {K c : Nat} {k : SK} {e : ExpHOL 64} (hc : c < K) (hK : K ≤ 64)
    (hD : D.toNat ≤ 2 ^ 62) (he : k = .w → OneWord (σ := σ) e) :
    HoareG σ X (fun t => BWA d n i D N s0 t ∧ t.locals.lookup i = some (.val (.word I)) ∧
        I.toNat + K ≤ N.toNat ∧ (I.toNat = 0 ∨ D.toNat + I.toNat ≤ domTop + 64))
      (stO d i k c e)
      (fun r t => r = none ∧ BWA d n i D N s0 t ∧ t.locals.lookup i = some (.val (.word I)) ∧
        I.toNat + K ≤ N.toNat ∧ D.toNat + I.toNat + c ≤ domTop + 8) := by
  have hs0 := domTop_small
  have haddr : ∀ t : State σ, BWA d n i D N s0 t → t.locals.lookup i = some (.val (.word I)) →
      (I.toNat = 0 ∨ D.toNat + I.toNat ≤ domTop + 64) →
      ∀ w, ev t (offI d i c) = some (.val (.word w)) → w.toNat = D.toNat + I.toNat + c := by
    intro t hbw hi hb w hw
    rw [ev_offI hbw.1 hi] at hw
    cases hw
    rw [toNat_add3 (by omega)]
  cases k with
  | w =>
      refine hoareG_store fun t hs ⟨hbw, hi, hK', hb⟩ w v mem ha hv hst => ?_
      obtain ⟨x, hx⟩ := he rfl t v hv
      rw [hx] at hst
      obtain ⟨hm, hdom⟩ := store1_mod hst
      have hdX : X.memaddrs w := hs.2.1 ▸ hdom
      have hal : w.toNat % 8 = 0 := hA w hdX
      have hlt := hT w hdX
      have hw := haddr t hbw hi hb w ha
      obtain ⟨hld, hln, hli, hgl, hmem⟩ := hbw
      refine ⟨rfl, ⟨hld, hln, hli, hgl, ?_⟩, hi, hK', by omega⟩
      refine hmem.trans (hm.mono fun a ha' => ?_)
      subst ha'
      exact ⟨hal, by omega⟩
  | b =>
      refine hoareG_storeByte fun t hs ⟨hbw, hi, hK', hb⟩ w x mem ha _ hst => ?_
      have hm := storeByte_mod hst
      have hdX : X.memaddrs (panByteAlignHOL w) := hs.2.1 ▸ storeByte_dom hst
      have hal := hA _ hdX
      have hlt := hT _ hdX
      have hba := byteAlign_toNat w
      have hw := haddr t hbw hi hb w ha
      have h8 : w.toNat < w.toNat / 8 * 8 + 8 := by omega
      obtain ⟨hld, hln, hli, hgl, hmem⟩ := hbw
      refine ⟨rfl, ⟨hld, hln, hli, hgl, ?_⟩, hi, hK', by omega⟩
      refine hmem.trans (hm.mono fun a ha' => ?_)
      subst ha'
      exact ⟨hal, by omega⟩

/-- The remaining stores of a block, then `i += K`, once its first store is known in range. -/
theorem hoareG_blkR (hA : AlignedDom X) (hT : DomBelow X) {d n i : MlS} {D N I : BitVec 64}
    {s0 : State σ} {K : Nat} (hid : i ≠ d) (hin : i ≠ n) (hK : K ≤ 32) (hD : D.toNat ≤ 2 ^ 62) :
    ∀ {ss : List (SK × Nat × ExpHOL 64)}, BlkOK (σ := σ) K ss →
    HoareG σ X (fun t => BWA d n i D N s0 t ∧ t.locals.lookup i = some (.val (.word I)) ∧
        I.toNat + K ≤ N.toNat ∧ D.toNat + I.toNat ≤ domTop + 8)
      (blk d i K ss) (fun r t => r = none ∧ BWA d n i D N s0 t)
  | [], _ => by
      refine hoareG_assign fun t _ ⟨hbw, hi, hK', hb⟩ v hv _ => ?_
      rw [ev_add2 (ev_lw hi) (ev_cw _ _)] at hv
      cases hv
      have hs0 := domTop_small
      obtain ⟨hld, hln, -, hgl, hmem⟩ := hbw
      have hadd : (I + BitVec.ofNat 64 K).toNat = I.toNat + K := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := K) (by omega),
          Nat.mod_eq_of_lt (by omega)]
      refine ⟨rfl, ?_, ?_, ⟨_, lk_set_self _ _ _, ?_, ?_⟩, hgl, hmem⟩
      · rw [lk_set_ne _ _ hid]; exact hld
      · rw [lk_set_ne _ _ hin]; exact hln
      · rw [hadd]; exact hK'
      · right; rw [hadd]; omega
  | (k, c, e) :: rest, hss => by
      have h0 := hss (k, c, e) (by simp)
      have hrest : BlkOK (σ := σ) K rest := fun x hx => hss x (by simp [hx])
      refine hoareG_seq (R := fun r t => r = none ∧ BWA d n i D N s0 t ∧
          t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + K ≤ N.toNat ∧
          D.toNat + I.toNat ≤ domTop + 8) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoareG_conseq (hoareG_stOA (n := n) (N := N) (s0 := s0) (I := I) hA hT h0.1
          (by omega) hD h0.2) ?_ ?_
        · intro t _ ⟨hbw, hi, hK', hb⟩
          exact ⟨hbw, hi, hK', Or.inr (by have := domTop_small; omega)⟩
        · intro r t _ _ ⟨hr, hbw, hi, hK', hb⟩
          exact ⟨hr, hbw, hi, hK', by omega⟩
      · exact hoareG_pre (hoareG_blkR hA hT hid hin hK hD hrest) fun _ _ h => h.2

/-- A whole block starting with a store at offset `0`. -/
theorem hoareG_blk0 (hA : AlignedDom X) (hT : DomBelow X) {d n i : MlS} {D N I : BitVec 64}
    {s0 : State σ} {K : Nat} (hid : i ≠ d) (hin : i ≠ n) (hK : K ≤ 32) (hK0 : 0 < K)
    (hD : D.toNat ≤ 2 ^ 62) {k : SK} {e : ExpHOL 64} {rest : List (SK × Nat × ExpHOL 64)}
    (hss : BlkOK (σ := σ) K ((k, 0, e) :: rest)) :
    HoareG σ X (fun t => BWA d n i D N s0 t ∧ t.locals.lookup i = some (.val (.word I)) ∧
        I.toNat + K ≤ N.toNat ∧ (I.toNat = 0 ∨ D.toNat + I.toNat ≤ domTop + 64))
      (blk d i K ((k, 0, e) :: rest)) (fun r t => r = none ∧ BWA d n i D N s0 t) := by
  have h0 := hss (k, 0, e) (by simp)
  have hrest : BlkOK (σ := σ) K rest := fun x hx => hss x (by simp [hx])
  refine hoareG_seq (R := fun r t => r = none ∧ BWA d n i D N s0 t ∧
      t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + K ≤ N.toNat ∧
      D.toNat + I.toNat ≤ domTop + 8) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoareG_conseq (hoareG_stOA (n := n) (N := N) (s0 := s0) (I := I) hA hT h0.1 (by omega) hD
      h0.2) (fun _ _ h => h) fun r t _ _ ⟨hr, hbw, hi, hK', hb⟩ => ⟨hr, hbw, hi, hK', by omega⟩
  · exact hoareG_pre (hoareG_blkR hA hT hid hin hK hD hrest) fun _ _ h => h.2

/-- `i + K <=+ n` is true only with `I + K ≤ N`: `i` is far below `2^64`. -/
theorem guard_geKA {d n i : MlS} {D N : BitVec 64} {s0 t : State σ} {K : Nat}
    (hK : K < 2 ^ 32) (hbw : BWA d n i D N s0 t) (hc : CondTrue t (geK n i K)) :
    ∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + K ≤ N.toNat ∧
      (I.toNat = 0 ∨ D.toNat + I.toNat ≤ domTop + 64) := by
  obtain ⟨_, hln, ⟨I, hi, hIN, hb⟩, -⟩ := hbw
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hln] at hx
  cases hx
  rw [ev_add2 (ev_lw hi) (ev_cw _ _)] at hy
  cases hy
  refine ⟨I, hi, ?_, hb⟩
  have hs0 := domTop_small
  simp only [wordCmpHOL, Bool.not_eq_true', decide_eq_false_iff_not, BitVec.lt_def] at hxy
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := K) (by omega),
    Nat.mod_eq_of_lt (by omega)] at hxy
  omega

theorem guard_ltNA {d n i : MlS} {D N : BitVec 64} {s0 t : State σ}
    (hbw : BWA d n i D N s0 t) (hc : CondTrue t (ltN i n)) :
    ∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + 1 ≤ N.toNat ∧
      (I.toNat = 0 ∨ D.toNat + I.toNat ≤ domTop + 64) := by
  obtain ⟨_, hln, ⟨I, hi, -, hb⟩, -⟩ := hbw
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hi] at hx
  cases hx
  rw [ev_lw hln] at hy
  cases hy
  exact ⟨I, hi, lower_true hxy, hb⟩

/-- **A loop of blocks**, with a chosen exit post. -/
theorem hoareG_wloopA (hA : AlignedDom X) (hT : DomBelow X) {d n i : MlS} {D N : BitVec 64}
    {s0 : State σ} {K : Nat} {c : ExpHOL 64} {k : SK} {e : ExpHOL 64}
    {rest ss : List (SK × Nat × ExpHOL 64)} (hss0 : ss = (k, 0, e) :: rest) (hid : i ≠ d)
    (hin : i ≠ n) (hK : K ≤ 32) (hK0 : 0 < K) (hD : D.toNat ≤ 2 ^ 62) (hss : BlkOK (σ := σ) K ss)
    (hg : ∀ t : State σ, BWA d n i D N s0 t → CondTrue t c →
      ∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + K ≤ N.toNat ∧
        (I.toNat = 0 ∨ D.toNat + I.toNat ≤ domTop + 64))
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hx : ∀ t : State σ, BWA d n i D N s0 t → ev t c = some (.val (.word 0)) → Q none t) :
    HoareG σ X (BWA d n i D N s0) (.while c (blk d i K ss)) Q := by
  subst hss0
  refine hoareG_while (fun t h => h) ?_ (fun t _ h hc => hx t h hc)
  intro t hs ⟨hbw, hc⟩ hgood
  obtain ⟨I, hi, hIK, hb⟩ := hg t hbw hc
  obtain ⟨hr, hbw'⟩ := hoareG_blk0 (I := I) hA hT hid hin hK hK0 hD hss t hs ⟨hbw, hi, hIK, hb⟩ hgood
  rw [hr]
  exact ⟨fun _ => hbw', (fun h => nomatch h), (fun h => nomatch h), (fun r' h => nomatch h)⟩

/-- `i <+ n` false: `N ≤ I`. -/
theorem exit_ltN {d n i : MlS} {D N : BitVec 64} {s0 t : State σ}
    (hbw : BWA d n i D N s0 t) (hc : ev t (ltN i n) = some (.val (.word 0))) :
    N.toNat = 0 ∨ D.toNat + N.toNat ≤ domTop + 64 := by
  obtain ⟨_, hln, ⟨I, hi, hIN, hb⟩, -⟩ := hbw
  rw [show ltN i n = ExpHOL.cmp .lower (lv i) (lv n) from rfl, ev_cmp (ev_lw hi) (ev_lw hln)] at hc
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hc
  have hNI : N.toNat ≤ I.toNat := by
    by_contra hlt
    have : wordCmpHOL .lower I N = true := by
      simp only [wordCmpHOL, decide_eq_true_eq, BitVec.lt_def]
      omega
    rw [this] at hc
    simp at hc
  have hEq : I.toNat = N.toNat := by omega
  rw [← hEq]
  rcases hb with h | h
  · exact Or.inl h
  · exact Or.inr h

/-- **The skeleton of `memcpy` and `memzero`, without a size hypothesis.** -/
theorem hoareG_memSkelA (hA : AlignedDom X) (hT : DomBelow X) {al : ExpHOL 64}
    {E : SK → Nat → ExpHOL 64} (hE : ∀ c, OneWord (σ := σ) (E .w c))
    {D N : BitVec 64} {s0 : State σ}
    (hd : s0.locals.lookup dN = some (.val (.word D)))
    (hn : s0.locals.lookup nN = some (.val (.word N))) (hD : D.toNat ≤ 2 ^ 62) :
    HoareG σ X (fun t => t = s0) (memSkel al (fun k cs => cs.map fun c => (k, c, E k c)))
      (fun _ t => t.globals = s0.globals ∧ ModifiesOnly (AbvR D) s0.memory t.memory ∧
        (N.toNat = 0 ∨ D.toNat + N.toNat ≤ domTop + 64)) := by
  have hOK : ∀ (k : SK) {K : Nat} (cs : List Nat), (∀ c ∈ cs, c < K) →
      BlkOK (σ := σ) K (cs.map fun c => (k, c, E k c)) := by
    intro k K cs hcs x hx
    simp only [List.mem_map] at hx
    obtain ⟨c, hc, rfl⟩ := hx
    refine ⟨hcs c hc, fun hk => ?_⟩
    cases k with
    | w => exact hE c
    | b => cases hk
  have loopGe : ∀ (K : Nat) (k : SK) (cs : List Nat), 0 < K → K ≤ 32 → (∀ c ∈ 0 :: cs, c < K) →
      HoareG σ X (BWA dN nN iN D N s0)
        (.while (geK nN iN K) (blk dN iN K ((0 :: cs).map fun c => (k, c, E k c))))
        (fun r t => r = none ∧ BWA dN nN iN D N s0 t) := fun K k cs h0 h1 hcs =>
    hoareG_wloopA hA hT rfl iN_ne_dN iN_ne_nN h1 h0 hD (hOK k _ hcs) (fun t hbw hc =>
      guard_geKA (by omega) hbw hc) fun t h _ => ⟨rfl, h⟩
  have loopLt : HoareG σ X (BWA dN nN iN D N s0)
      (.while (ltN iN nN) (blk dN iN 1 (([0] : List Nat).map fun c => (SK.b, c, E SK.b c))))
      (fun r t => t.globals = s0.globals ∧ ModifiesOnly (AbvR D) s0.memory t.memory ∧
        (N.toNat = 0 ∨ D.toNat + N.toNat ≤ domTop + 64) ∧ r = none) :=
    hoareG_wloopA hA hT rfl iN_ne_dN iN_ne_nN (by omega) (by omega) hD (hOK SK.b [0] (by simp))
      (fun t hbw hc => guard_ltNA hbw hc)
      fun t hbw hc => ⟨hbw.2.2.2.1, hbw.2.2.2.2, exit_ltN hbw hc, rfl⟩
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (P := BWA dN nN iN D N s0)
    (Q := fun _ t => t.globals = s0.globals ∧ ModifiesOnly (AbvR D) s0.memory t.memory ∧
        (N.toNat = 0 ∨ D.toNat + N.toNat ≤ domTop + 64)) ?_ ?_ fun _ t _ _ h => h
  · refine hoareG_seq (R := fun r t => r = none ∧ BWA dN nN iN D N s0 t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_ite ?_ (hoareG_skip fun t _ h => ⟨rfl, h.1⟩)
      refine hoareG_pre (P := BWA dN nN iN D N s0) ?_ fun _ _ h => h.1
      exact hoareG_seq (loopGe 32 SK.w [8, 16, 24] (by decide) (by decide) (by simp))
        (fun _ _ _ hr _ h => absurd h.1 hr)
        (hoareG_pre (loopGe 8 SK.w [] (by decide) (by decide) (by simp)) fun _ _ h => h.2)
    · refine hoareG_pre (P := BWA dN nN iN D N s0) ?_ fun _ _ h => h.2
      refine hoareG_seq (loopGe 8 SK.b [1, 2, 3, 4, 5, 6, 7] (by decide) (by decide) (by simp))
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      refine hoareG_seq (R := fun r t => t.globals = s0.globals ∧
        ModifiesOnly (AbvR D) s0.memory t.memory ∧
        (N.toNat = 0 ∨ D.toNat + N.toNat ≤ domTop + 64) ∧ r = none)
        (hoareG_pre loopLt fun _ _ h => h.2) (fun _ _ _ hr _ h => absurd h.2.2.2 hr) ?_
      exact hoareG_return fun t _ h _ _ => ⟨h.1, h.2.1, h.2.2.1⟩
  · intro t _ ht
    subst ht
    refine ⟨?_, ?_, ⟨0, lk_set_self _ _ _, by simp, by simp⟩, rfl, fun _ _ => rfl⟩
    · rw [lk_set_ne _ _ iN_ne_dN]; exact hd
    · rw [lk_set_ne _ _ iN_ne_nN]; exact hn

/-- **`memcpy`, any length.** -/
theorem funSpec_memcpyA (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomBelow X) :
    FunSpec σ X (nm "memcpy") (fun vs s r t => Good (some r) → ∀ D N : BitVec 64,
      argW vs 0 = some D → argW vs 2 = some N → D.toNat ≤ 2 ^ 62 →
      t.globals = s.globals ∧ ModifiesOnly (AbvR D) s.memory t.memory ∧
        (N.toNat = 0 ∨ D.toNat + N.toNat ≤ domTop + 64)) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg D N hDa hNa hD
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, hA', -, hC', hla, -, hlc⟩ :=
    lookupCode_three code_memcpy (by decide) (by decide) (by decide) hl
  obtain ⟨D', rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N', rfl⟩ := val_of_shapeEq_one hC'
  cases hDa
  cases hNa
  have H := hoareG_memSkelA (σ := σ) (al := .op .and [.op .or [lv dN, lv sN], cw 7]) (E := cpE) hA hT
    (fun c => oneWord_load _) (D := D) (N := N) (s0 := s0) (hloc ▸ hla) (hloc ▸ hlc) hD
  have := H s0 hs0 rfl (by show Good (evaluateHOLFiniteState s0 memcpyBody).1; rw [hr]; exact hg)
  rw [show (evaluateHOLFiniteState s0 (memSkel (.op .and [.op .or [lv dN, lv sN], cw 7])
      (fun k cs => cs.map fun c => (k, c, cpE k c)))) = evaluateHOLFiniteState s0 memcpyBody from rfl] at this
  exact this

/-- **`memzero`, any length.** -/
theorem funSpec_memzeroA (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomBelow X) :
    FunSpec σ X (nm "memzero") (fun vs s r t => Good (some r) → ∀ D N : BitVec 64,
      argW vs 0 = some D → argW vs 1 = some N → D.toNat ≤ 2 ^ 62 →
      t.globals = s.globals ∧ ModifiesOnly (AbvR D) s.memory t.memory ∧
        (N.toNat = 0 ∨ D.toNat + N.toNat ≤ domTop + 64)) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg D N hDa hNa hD
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_memzero (by decide) hl
  obtain ⟨D', rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N', rfl⟩ := val_of_shapeEq_one hB'
  cases hDa
  cases hNa
  have H := hoareG_memSkelA (σ := σ) (al := .op .and [lv dN, cw 7]) (E := fun _ _ => cw 0) hA hT
    (fun c => oneWord_cw 0) (D := D) (N := N) (s0 := s0) (hloc ▸ hla) (hloc ▸ hlb) hD
  have := H s0 hs0 rfl (by show Good (evaluateHOLFiniteState s0 memzeroBody).1; rw [hr]; exact hg)
  rw [show (evaluateHOLFiniteState s0 (memSkel (.op .and [lv dN, cw 7])
      (fun k cs => cs.map fun c => (k, c, cw 0)))) = evaluateHOLFiniteState s0 memzeroBody from rfl] at this
  exact this

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.funSpec_memcpyA
#print axioms InitECandidate.Solver.MemSafe.Aw.funSpec_memzeroA
