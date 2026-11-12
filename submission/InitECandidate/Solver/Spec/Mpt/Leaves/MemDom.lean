import InitECandidate.Solver.Spec.Mpt.Leaves.Common
import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.MemSafe.Helpers.GuestCtx

/-!
# `memcpy` without a no-wrap precondition, under a domain bound

`DomTop X`: every memory-domain cell is below `2^62`. It holds for the guest context
(`domTop_guestCtx`: the ordinary domain lies below `InitE.heapEnd < 2^35`).

`footD_memcpy` (with `AlignedDom X`, `DomTop X`): every good result of `memcpy(D, S, N)`, for **any**
`N`, keeps the globals, changes memory only in the cells overlapping `[D, D + N)`, and has
`N = 0 ∨ D + N < 2^63`. A run with a huge `N` cannot return: its stores walk upwards from `D` and
leave the domain. The loop invariant (`BWD`) carries `I = 0 ∨ D + I < 2^62 + 32` instead of the
`D + N < 2^63` precondition of `MemSafe.Helpers.hoareG_memSkel`: every block starts with a store at
offset `0`, whose success puts `D + I` below `2^62`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt.Dec (State)

variable {σ : Type} {X : Ctx 64}

open MemSafe (ptrsOf Ptrs heapEnd heapBase scratchEnd Overlap ModifiesOnly)

/-- Every memory-domain cell lies below `2^62`. -/
def DomTop (X : Ctx 64) : Prop := ∀ a, X.memaddrs a → a.toNat < 2 ^ 62

/-! ## The loop state -/

/-- `BW` with the reach bound `I = 0 ∨ D + I < 2^62 + 32` in place of a no-wrap precondition. -/
def BWD (d n i : MlS) (D N : BitVec 64) (s0 t : State σ) : Prop :=
  t.locals.lookup d = some (.val (.word D)) ∧ t.locals.lookup n = some (.val (.word N)) ∧
    (∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat ≤ N.toNat ∧
      (I.toNat = 0 ∨ D.toNat + I.toNat < 2 ^ 62 + 32)) ∧
    t.globals = s0.globals ∧ ModifiesOnly (Overlap D.toNat N.toNat) s0.memory t.memory

/-- The in-block state: `i = I`, `I + K ≤ N`, and `D + I` is either known below `2^62` or the
next store is the block's first (offset `0`). -/
def BIn (d n i : MlS) (D N I : BitVec 64) (K : Nat) (s0 t : State σ) : Prop :=
  BWD d n i D N s0 t ∧ t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + K ≤ N.toNat ∧
    (I.toNat = 0 ∨ D.toNat + I.toNat < 2 ^ 62 + 32)

/-- One store at `d + i + c`: either a first store (`c = 0`) or after one (`D + I < 2^62`). -/
theorem hoareG_stOD (hA : AlignedDom X) (hT : DomTop X) {d n i : MlS} {D N I : BitVec 64}
    {s0 : State σ} {K c : Nat} {k : SK} {e : ExpHOL 64} (hc : c < K) (hK : K ≤ 32)
    (he : k = .w → OneWord (σ := σ) e) :
    HoareG σ X (fun t => BIn d n i D N I K s0 t ∧ (c = 0 ∨ D.toNat + I.toNat < 2 ^ 62))
      (stO d i k c e)
      (fun r t => r = none ∧ BIn d n i D N I K s0 t ∧ D.toNat + I.toNat < 2 ^ 62) := by
  have hnw : ∀ t : State σ, BIn d n i D N I K s0 t → (c = 0 ∨ D.toNat + I.toNat < 2 ^ 62) →
      D.toNat + I.toNat + c < 2 ^ 64 := by
    intro t ⟨_, _, _, hJ⟩ hcase
    have := D.isLt
    rcases hcase with h | h
    · subst h; rcases hJ with h' | h' <;> omega
    · omega
  have haddr : ∀ t : State σ, BIn d n i D N I K s0 t → (c = 0 ∨ D.toNat + I.toNat < 2 ^ 62) →
      ∀ w, ev t (offI d i c) = some (.val (.word w)) → w.toNat = D.toNat + I.toNat + c := by
    intro t hb hcase w hw
    rw [ev_offI hb.1.1 hb.2.1] at hw
    cases hw
    exact toNat_add3 (hnw t hb hcase)
  cases k with
  | w =>
      refine MemSafe.hoareG_store fun t hs ⟨hb, hcase⟩ w v mem ha hv hst => ?_
      obtain ⟨x, hx⟩ := he rfl t v hv
      rw [hx] at hst
      obtain ⟨hm, hdom⟩ := store1_mod hst
      have hdom' : X.memaddrs w := hs.2.1 ▸ hdom
      have hal : w.toNat % 8 = 0 := hA w hdom'
      have hlt := hT w hdom'
      have hw := haddr t hb hcase w ha
      obtain ⟨⟨hld, hln, hli, hgl, hmem⟩, hi, hIK, hJ⟩ := hb
      refine ⟨rfl, ⟨⟨hld, hln, hli, hgl, ?_⟩, hi, hIK, hJ⟩, by omega⟩
      exact hmem.trans (hm.mono fun a ha' => ha' ▸ overlap_word hal (by omega) (by omega))
  | b =>
      refine MemSafe.hoareG_storeByte fun t hs ⟨hb, hcase⟩ w x mem ha _ hst => ?_
      have hm := storeByte_mod hst
      have hdom := (Spec.Inv.storeByte_eq hst).1
      have hdom' : X.memaddrs (panByteAlignHOL w) := hs.2.1 ▸ hdom
      have hal := hA _ hdom'
      have hlt := hT _ hdom'
      rw [byteAlign_toNat] at hal hlt
      have hw := haddr t hb hcase w ha
      obtain ⟨⟨hld, hln, hli, hgl, hmem⟩, hi, hIK, hJ⟩ := hb
      refine ⟨rfl, ⟨⟨hld, hln, hli, hgl, ?_⟩, hi, hIK, hJ⟩, by omega⟩
      exact hmem.trans (hm.mono fun a ha' => ha' ▸ overlap_byte (by omega) (by omega))

/-- The rest of a block after its first store, then `i += K`. -/
theorem hoareG_blkD_rest (hA : AlignedDom X) (hT : DomTop X) {d n i : MlS} {D N I : BitVec 64}
    {s0 : State σ} {K : Nat} (hid : i ≠ d) (hin : i ≠ n) (hK : K ≤ 32) :
    ∀ {ss : List (SK × Nat × ExpHOL 64)}, BlkOK (σ := σ) K ss →
    HoareG σ X (fun t => BIn d n i D N I K s0 t ∧ D.toNat + I.toNat < 2 ^ 62)
      (blk d i K ss) (fun r t => r = none ∧ BWD d n i D N s0 t)
  | [], _ => by
      refine hoareG_assign fun t _ ⟨⟨hbw, hi, hK', _⟩, hH⟩ v hv _ => ?_
      rw [ev_add2 (ev_lw hi) (ev_cw _ _)] at hv
      cases hv
      obtain ⟨hld, hln, -, hgl, hmem⟩ := hbw
      have e : (I + BitVec.ofNat 64 K).toNat = I.toNat + K := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := K) (by omega),
          Nat.mod_eq_of_lt (by omega)]
      refine ⟨rfl, ?_, ?_, ⟨_, lk_set_self _ _ _, by rw [e]; exact hK', Or.inr (by rw [e]; omega)⟩,
        hgl, hmem⟩
      · rw [lk_set_ne _ _ hid]; exact hld
      · rw [lk_set_ne _ _ hin]; exact hln
  | (k, c, e) :: rest, hss => by
      have h0 := hss (k, c, e) (by simp)
      have hrest : BlkOK (σ := σ) K rest := fun x hx => hss x (by simp [hx])
      refine hoareG_seq (hoareG_pre (hoareG_stOD hA hT h0.1 hK h0.2) fun _ _ h => ⟨h.1, Or.inr h.2⟩)
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      exact hoareG_pre (hoareG_blkD_rest hA hT hid hin hK hrest) fun _ _ h => h.2

/-- A whole block whose first store is at offset `0`. -/
theorem hoareG_blkD (hA : AlignedDom X) (hT : DomTop X) {d n i : MlS} {D N I : BitVec 64}
    {s0 : State σ} {K : Nat} (hid : i ≠ d) (hin : i ≠ n) (hK : K ≤ 32) {k : SK} {e : ExpHOL 64}
    {ss : List (SK × Nat × ExpHOL 64)} (hss : BlkOK (σ := σ) K ((k, 0, e) :: ss)) :
    HoareG σ X (BIn d n i D N I K s0) (blk d i K ((k, 0, e) :: ss))
      (fun r t => r = none ∧ BWD d n i D N s0 t) := by
  have h0 := hss (k, 0, e) (by simp)
  have hrest : BlkOK (σ := σ) K ss := fun x hx => hss x (by simp [hx])
  refine hoareG_seq (hoareG_pre (hoareG_stOD hA hT h0.1 hK h0.2) fun _ _ h => ⟨h, Or.inl rfl⟩)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  exact hoareG_pre (hoareG_blkD_rest hA hT hid hin hK hrest) fun _ _ h => h.2

theorem guard_geKD {d n i : MlS} {D N : BitVec 64} {s0 t : State σ} {K : Nat}
    (hK : K ≤ 32) (hbw : BWD d n i D N s0 t) (hc : CondTrue t (geK n i K)) :
    ∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + K ≤ N.toNat ∧
      (I.toNat = 0 ∨ D.toNat + I.toNat < 2 ^ 62 + 32) := by
  obtain ⟨_, hln, ⟨I, hi, hIN, hJ⟩, -⟩ := hbw
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hln] at hx
  cases hx
  rw [ev_add2 (ev_lw hi) (ev_cw _ _)] at hy
  cases hy
  refine ⟨I, hi, ?_, hJ⟩
  simp only [wordCmpHOL, Bool.not_eq_true', decide_eq_false_iff_not, BitVec.lt_def] at hxy
  have hI : I.toNat + K < 2 ^ 64 := by rcases hJ with h | h <;> omega
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := K) (by omega),
    Nat.mod_eq_of_lt hI] at hxy
  omega

theorem guard_ltND {d n i : MlS} {D N : BitVec 64} {s0 t : State σ}
    (hbw : BWD d n i D N s0 t) (hc : CondTrue t (ltN i n)) :
    ∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + 1 ≤ N.toNat ∧
      (I.toNat = 0 ∨ D.toNat + I.toNat < 2 ^ 62 + 32) := by
  obtain ⟨_, hln, ⟨I, hi, -, hJ⟩, -⟩ := hbw
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hi] at hx
  cases hx
  rw [ev_lw hln] at hy
  cases hy
  exact ⟨I, hi, lower_true hxy, hJ⟩

/-- A buffer-writer loop with a first store at offset `0` keeps `BWD`; on exit the guard is
false. -/
theorem hoareG_wloopD (hA : AlignedDom X) (hT : DomTop X) {d n i : MlS} {D N : BitVec 64}
    {s0 : State σ} {K : Nat} {c : ExpHOL 64} {k : SK} {e : ExpHOL 64}
    {ss : List (SK × Nat × ExpHOL 64)} (hid : i ≠ d) (hin : i ≠ n) (hK : K ≤ 32)
    (hss : BlkOK (σ := σ) K ((k, 0, e) :: ss))
    (hg : ∀ t : State σ, BWD d n i D N s0 t → CondTrue t c →
      ∃ I : BitVec 64, t.locals.lookup i = some (.val (.word I)) ∧ I.toNat + K ≤ N.toNat ∧
        (I.toNat = 0 ∨ D.toNat + I.toNat < 2 ^ 62 + 32)) :
    HoareG σ X (BWD d n i D N s0) (.while c (blk d i K ((k, 0, e) :: ss)))
      (fun r t => r = none ∧ BWD d n i D N s0 t ∧ ev t c = some (.val (.word 0))) := by
  refine MemSafe.hoareG_while (fun t h => h) ?_ (fun t _ h hc => ⟨rfl, h, hc⟩)
  intro t hs ⟨hbw, hc⟩ hgood
  obtain ⟨I, hi, hIK, hJ⟩ := hg t hbw hc
  obtain ⟨hr, hbw'⟩ := hoareG_blkD (I := I) hA hT hid hin hK hss t hs ⟨hbw, hi, hIK, hJ⟩ hgood
  rw [hr]
  exact ⟨fun _ => hbw', (fun h => nomatch h), (fun h => nomatch h), (fun r' h => nomatch h)⟩

/-! ## The skeleton -/

/-- The `memcpy` / `memzero` skeleton under `DomTop`: writes only `[D, D + N)`, keeps the
globals, and `N = 0 ∨ D + N < 2^63`. -/
theorem hoareG_memSkelD (hA : AlignedDom X) (hT : DomTop X) {al : ExpHOL 64}
    {L : SK → List Nat → List (SK × Nat × ExpHOL 64)}
    (hL : ∀ k {K : Nat} (cs : List Nat), (∀ c ∈ cs, c < K) → BlkOK (σ := σ) K (L k cs))
    (hL0 : ∀ k (c : Nat) (cs : List Nat), ∃ e rest, L k (c :: cs) = (k, c, e) :: rest)
    {D N : BitVec 64} {s0 : State σ}
    (hd : s0.locals.lookup dN = some (.val (.word D)))
    (hn : s0.locals.lookup nN = some (.val (.word N))) :
    HoareG σ X (fun t => t = s0) (memSkel al L) (fun r t => (∃ v, r = some (.returned v)) ∧
      t.globals = s0.globals ∧ ModifiesOnly (Overlap D.toNat N.toNat) s0.memory t.memory ∧
      (N.toNat = 0 ∨ D.toNat + N.toNat < 2 ^ 63)) := by
  have loopGe : ∀ (K : Nat) (k : SK) (cs : List Nat), 1 ≤ K → K ≤ 32 → (∀ c ∈ 0 :: cs, c < K) →
      HoareG σ X (BWD dN nN iN D N s0) (.while (geK nN iN K) (blk dN iN K (L k (0 :: cs))))
        (fun r t => r = none ∧ BWD dN nN iN D N s0 t) := by
    intro K k cs h1 h2 hcs
    obtain ⟨e, rest, he⟩ := hL0 k 0 cs
    have hss := hL k (0 :: cs) hcs
    rw [he] at hss ⊢
    exact hoareG_conseq (hoareG_wloopD hA hT iN_ne_dN iN_ne_nN h2 hss
      fun t hbw hc => guard_geKD h2 hbw hc) (fun _ _ h => h) fun _ _ _ _ h => ⟨h.1, h.2.1⟩
  have loopLt : HoareG σ X (BWD dN nN iN D N s0) (.while (ltN iN nN) (blk dN iN 1 (L .b [0])))
      (fun r t => r = none ∧ BWD dN nN iN D N s0 t ∧ ev t (ltN iN nN) = some (.val (.word 0))) := by
    obtain ⟨e, rest, he⟩ := hL0 .b 0 []
    have hss := hL .b [0] (K := 1) (by simp)
    rw [he] at hss ⊢
    exact hoareG_wloopD hA hT iN_ne_dN iN_ne_nN (by decide) hss fun t hbw hc => guard_ltND hbw hc
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (P := BWD dN nN iN D N s0) (Q := fun r t => (∃ v, r = some (.returned v)) ∧
      t.globals = s0.globals ∧ ModifiesOnly (Overlap D.toNat N.toNat) s0.memory t.memory ∧
      (N.toNat = 0 ∨ D.toNat + N.toNat < 2 ^ 63)) ?_ ?_ fun _ t _ _ h => h
  · refine hoareG_seq (R := fun r t => r = none ∧ BWD dN nN iN D N s0 t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_ite ?_ (hoareG_skip fun t _ h => ⟨rfl, h.1⟩)
      refine hoareG_pre (P := BWD dN nN iN D N s0) ?_ fun _ _ h => h.1
      exact hoareG_seq (loopGe 32 .w [8, 16, 24] (by decide) le_rfl (by simp))
        (fun _ _ _ hr _ h => absurd h.1 hr)
        (hoareG_pre (loopGe 8 .w [] (by decide) (by decide) (by simp)) fun _ _ h => h.2)
    · refine hoareG_pre (P := BWD dN nN iN D N s0) ?_ fun _ _ h => h.2
      refine hoareG_seq (loopGe 8 .b [1, 2, 3, 4, 5, 6, 7] (by decide) (by decide) (by simp))
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      refine hoareG_seq (hoareG_pre loopLt fun _ _ h => h.2)
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      refine MemSafe.hoareG_return fun t _ ⟨_, ⟨_, hln, ⟨I, hi, hIN, hJ⟩, hgl, hmem⟩, hc⟩ v _ =>
        ⟨⟨v, rfl⟩, hgl, hmem, ?_⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw hi] at hx; rw [ev_lw hln] at hy; cases hx; cases hy
      have := lower_false hxy
      have hIN' : I.toNat = N.toNat := by omega
      rw [← hIN']
      rcases hJ with h | h
      · exact Or.inl h
      · exact Or.inr (by omega)
  · intro t _ ht
    subst ht
    refine ⟨?_, ?_, ⟨0, lk_set_self _ _ _, by simp, by simp⟩, rfl, fun _ _ => rfl⟩
    · rw [lk_set_ne _ _ iN_ne_dN]; exact hd
    · rw [lk_set_ne _ _ iN_ne_nN]; exact hn

/-- **`memcpy` under `DomTop`**, with no precondition on the length. -/
theorem footD_memcpy (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X) :
    FunSpec σ X (nm "memcpy") (fun vs s r t => Good (some r) → ∀ D S N : BitVec 64,
      vs = [.val (.word D), .val (.word S), .val (.word N)] → (∃ v, r = .returned v) ∧
      t.globals = s.globals ∧ ModifiesOnly (Overlap D.toNat N.toNat) s.memory t.memory ∧
      (N.toNat = 0 ∨ D.toNat + N.toNat < 2 ^ 63)) := by
  intro vs body callee rs hl s0 hs hloc r hr hg D S N hvs
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, -, -, -, hla, -, hlc⟩ :=
    lookupCode_three code_memcpy (by decide) (by decide) (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  have H := hoareG_memSkelD (σ := σ) (X := X) (al := .op .and [.op .or [lv dN, lv sN], cw 7])
    (L := cpL) hA hT (fun k _ cs h => blkOK_cp k cs h) (fun k c cs => ⟨_, _, rfl⟩)
    (hloc ▸ hla) (hloc ▸ hlc) s0 hs rfl (by unfold memcpyBody at hr; rw [hr]; exact hg)
  unfold memcpyBody at hr
  rw [hr] at H
  obtain ⟨⟨v, hv⟩, h⟩ := H
  exact ⟨⟨v, Option.some.inj hv⟩, h⟩

/-- **`memzero` under `DomTop`**. -/
theorem footD_memzero (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X) :
    FunSpec σ X (nm "memzero") (fun vs s r t => Good (some r) → ∀ D N : BitVec 64,
      vs = [.val (.word D), .val (.word N)] → (∃ v, r = .returned v) ∧
      t.globals = s.globals ∧ ModifiesOnly (Overlap D.toNat N.toNat) s.memory t.memory ∧
      (N.toNat = 0 ∨ D.toNat + N.toNat < 2 ^ 63)) := by
  intro vs body callee rs hl s0 hs hloc r hr hg D N hvs
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hla, hlb⟩ := lookupCode_two code_memzero (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have H := hoareG_memSkelD (σ := σ) (X := X) (al := .op .and [lv dN, cw 7])
    (L := zL) hA hT (fun k _ cs h => blkOK_z k cs h) (fun k c cs => ⟨_, _, rfl⟩)
    (hloc ▸ hla) (hloc ▸ hlb) s0 hs rfl (by unfold memzeroBody at hr; rw [hr]; exact hg)
  unfold memzeroBody at hr
  rw [hr] at H
  obtain ⟨⟨v, hv⟩, h⟩ := H
  exact ⟨⟨v, Option.some.inj hv⟩, h⟩

theorem domTop_guestCtx : DomTop guestCtx := by
  intro a ha
  change InitE.ordinaryDomain a at ha
  unfold InitE.ordinaryDomain at ha
  obtain ⟨i, hi, rfl⟩ := (Flapjack.Compiler.Backend.StackRemove.mem_addresses _ _ _).mp ha
  have h8 : (Flapjack.Compiler.Backend.StackRemove.bytesInWord 64 : BitVec 64) =
      BitVec.ofNat 64 8 := rfl
  rw [h8, BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
    BitVec.toNat_ofNat]
  simp only [InitE.sourceBase, InitE.stackStart, InitE.ramEnd, InitE.ramStart, InitE.ramSize,
    InitE.stackSize, InitE.globalsWords] at hi ⊢
  omega

end InitECandidate.Solver.Spec.Mpt.Leaves
