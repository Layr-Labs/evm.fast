import InitECandidate.Solver.Spec.Fq12.Alloc
import InitECandidate.Solver.Spec.Memeq

/-!
# Write footprints of `memzero` and `memcpy`

Both run up to four loops `while i + step <= n { st/st8 dst + i + k, ...; i = i + step }`
(`k < step`), so they write only the cells `dst + i` and `ba (dst + i)`, `i < n` (`FpCells`).
The loops are rendered generically (`stLoop`), and one invariant (`FpJ`) covers all of them.

* `funSpec_memzero`, `funSpec_memcpy`: for `n < 2³²`, a returning call changes memory only
  in `FpCells dst n`.
* `fpCells_inBuf`: for `n ≤ 416`, these cells belong to the buffer `dst`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The cells a `memzero`/`memcpy` of `n` bytes at `dst` may write. -/
def FpCells (dst n c : BitVec 64) : Prop :=
  ∃ i : Nat, i < n.toNat ∧ (c = dst + BitVec.ofNat 64 i ∨ c = ba (dst + BitVec.ofNat 64 i))

theorem fpCells_inBuf {dst n c : BitVec 64} (hn : n.toNat ≤ 416) (h : FpCells dst n c) :
    InBuf dst c := by
  obtain ⟨i, hi, h⟩ := h
  exact ⟨i, by omega, h⟩

/-- `dst + i` or `dst + i + k` -/
def addrE (k : Nat) : ExpHOL 64 :=
  match k with
  | 0 => .op .add [lv (nm "dst"), lv (nm "i")]
  | k + 1 => .op .add [lv (nm "dst"), lv (nm "i"), cw (k + 1)]

/-- A straight run of stores `(byte?, offset, value)` followed by `i = i + step`. -/
def stRun (step : Nat) : List (Bool × Nat × ExpHOL 64) → ProgHOL 64
  | [] => .assign .local (nm "i") (.op .add [lv (nm "i"), cw step])
  | (b, k, v) :: rest =>
      .seq (if b then .storeByte (addrE k) v else .store (addrE k) v) (stRun step rest)

def stLoop (step : Nat) (sts : List (Bool × Nat × ExpHOL 64)) : ProgHOL 64 :=
  .while (.cmp .notLower (lv (nm "n")) (.op .add [lv (nm "i"), cw step])) (stRun step sts)

def stLoop1 (sts : List (Bool × Nat × ExpHOL 64)) : ProgHOL 64 :=
  .while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) (stRun 1 sts)

def zw (k : Nat) : Bool × Nat × ExpHOL 64 := (false, k, cw 0)
def zb (k : Nat) : Bool × Nat × ExpHOL 64 := (true, k, cw 0)

/-- `src + i` or `src + i + k` -/
def srcE (k : Nat) : ExpHOL 64 :=
  match k with
  | 0 => .op .add [lv (nm "src"), lv (nm "i")]
  | k + 1 => .op .add [lv (nm "src"), lv (nm "i"), cw (k + 1)]

def cw' (k : Nat) : Bool × Nat × ExpHOL 64 := (false, k, .load .one (srcE k))
def cb' (k : Nat) : Bool × Nat × ExpHOL 64 := (true, k, .loadByte (srcE k))

def memzeroBody : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0)
    (.seq (.ite (.cmp .equal (.op .and [lv (nm "dst"), cw 7]) (cw 0))
        (.seq (stLoop 32 [zw 0, zw 8, zw 16, zw 24]) (stLoop 8 [zw 0])) .skip)
      (.seq (stLoop 8 [zb 0, zb 1, zb 2, zb 3, zb 4, zb 5, zb 6, zb 7])
        (.seq (stLoop1 [zb 0]) (.return (cw 0)))))

def memcpyBody : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0)
    (.seq (.ite (.cmp .equal (.op .and [.op .or [lv (nm "dst"), lv (nm "src")], cw 7]) (cw 0))
        (.seq (stLoop 32 [cw' 0, cw' 8, cw' 16, cw' 24]) (stLoop 8 [cw' 0])) .skip)
      (.seq (stLoop 8 [cb' 0, cb' 1, cb' 2, cb' 3, cb' 4, cb' 5, cb' 6, cb' 7])
        (.seq (stLoop1 [cb' 0]) (.return (cw 0)))))

theorem entry_memzero : fnEntry Guest.Software.guestFn_memzero =
    (nm "memzero", [(nm "dst", .one), (nm "n", .one)], memzeroBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_memzero : guestCode (nm "memzero") =
    some ([(nm "dst", .one), (nm "n", .one)], memzeroBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 17) (by decide)) ⟨_, rfl⟩
    entry_memzero

theorem entry_memcpy : fnEntry Guest.Software.guestFn_memcpy =
    (nm "memcpy", [(nm "dst", .one), (nm "src", .one), (nm "n", .one)], memcpyBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_memcpy : guestCode (nm "memcpy") =
    some ([(nm "dst", .one), (nm "src", .one), (nm "n", .one)], memcpyBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩
    entry_memcpy

variable {σ : Type} {X : Ctx 64}

/-- The state facts the store loops keep, with counter `iv`; `L` collects further facts
(e.g. about `src`) kept by stores and by assignments to `i`. -/
def SJ (s0 : PanSemStateFiniteExact 64 σ) (dst n : BitVec 64)
    (L : PanSemStateFiniteExact 64 σ → Prop) (iv : BitVec 64) (t : PanSemStateFiniteExact 64 σ) :
    Prop :=
  L t ∧ t.locals.lookup (nm "dst") = some (.val (.word dst)) ∧
  t.locals.lookup (nm "n") = some (.val (.word n)) ∧
  t.locals.lookup (nm "i") = some (.val (.word iv)) ∧ iv.toNat ≤ n.toNat ∧
  (∀ c, ¬ FpCells dst n c → t.memory c = s0.memory c)

theorem ev_addrE {t : PanSemStateFiniteExact 64 σ} {dst iv : BitVec 64} (k : Nat)
    (hd : t.locals.lookup (nm "dst") = some (.val (.word dst)))
    (hi : t.locals.lookup (nm "i") = some (.val (.word iv))) (hk : iv.toNat + k < 2 ^ 64) :
    ev t (addrE k) = some (.val (.word (dst + BitVec.ofNat 64 (iv.toNat + k)))) := by
  cases k with
  | zero =>
      simp only [addrE]
      rw [ev_add2 (ev_lw hd) (ev_lw hi)]
      congr 3
      apply BitVec.eq_of_toNat_eq
      simp
  | succ k =>
      simp only [addrE]
      rw [ev_add3 (ev_lw hd) (ev_lw hi) (ev_cw _ (k + 1))]
      congr 3
      bv_omega

theorem byteStore_frame {m mem : BitVec 64 → HolWordLab 64} {D : BitVec 64 → Prop}
    {inst : DecidablePred D} {be : Bool} {w : BitVec 64} {b : BitVec 8}
    (h : @panMemStoreByteWord8HOL 64 _ m D inst be w b = some mem) :
    ∀ c, c ≠ ba w → mem c = m c := by
  unfold panMemStoreByteWord8HOL at h
  dsimp only at h
  split at h
  · simp only [Option.some.injEq] at h
    intro c hc
    rw [← h]
    simp [hc]
  · simp at h

/-- One store at offset `k < step` keeps the loop facts. -/
theorem hoare_st1 {s0 : PanSemStateFiniteExact 64 σ} {dst n iv : BitVec 64}
    {L : PanSemStateFiniteExact 64 σ → Prop}
    (hLm : ∀ t m, L t → L { t with memory := m }) (b : Bool) (k : Nat) (v : ExpHOL 64)
    (hv : b = false → ∀ (t : PanSemStateFiniteExact 64 σ) val, ev t v = some val → ∃ x, val = .val x)
    (hbnd : iv.toNat + k < n.toNat) :
    Hoare σ X (SJ s0 dst n L iv) (if b then .storeByte (addrE k) v else .store (addrE k) v)
      (fun r t => r = none ∧ SJ s0 dst n L iv t) := by
  have hn := n.isLt
  cases b with
  | false =>
      simp only [Bool.false_eq_true, if_false]
      refine hoare_store fun t _ ⟨hL, hd, hn', hi, hiv, hm⟩ w val mem hw hval hmem => ?_
      rw [ev_addrE k hd hi (by omega)] at hw
      cases hw
      obtain ⟨x, rfl⟩ := hv rfl t val hval
      have hflat : flattenHOL (ValueHOL.val x : ValueHOL 64) = [x] := by rw [flattenHOL]
      rw [hflat] at hmem
      obtain ⟨-, rfl⟩ := stores_one hmem
      refine ⟨rfl, hLm _ _ hL, hd, hn', hi, hiv, fun c hc => ?_⟩
      show (if c = _ then x else t.memory c) = _
      rw [if_neg (fun he => hc ⟨iv.toNat + k, hbnd, Or.inl he⟩)]
      exact hm c hc
  | true =>
      simp only [if_true]
      intro t hs ⟨hL, hd, hn', hi, hiv, hm⟩
      rw [evaluateHOLFiniteState_eq_evaluate_def t (.storeByte (addrE k) v)]
      dsimp only
      rw [show @evalHOLExact 64 σ _ t.toExact (fun a => Classical.propDecidable (t.memaddrs a)) (addrE k) =
        ev t (addrE k) from rfl, ev_addrE k hd hi (by omega)]
      dsimp only
      split
      · split
        · rename_i mem hmem
          intro _
          refine ⟨rfl, hLm _ _ hL, hd, hn', hi, hiv, fun c hc => ?_⟩
          show mem c = _
          rw [byteStore_frame hmem c (fun he => hc ⟨iv.toNat + k, hbnd, Or.inr he⟩)]
          exact hm c hc
        · intro ht; exact absurd ht (by simp)
      · intro ht; exact absurd ht (by simp)

theorem hoare_stRun {s0 : PanSemStateFiniteExact 64 σ} {dst n : BitVec 64}
    {L : PanSemStateFiniteExact 64 σ → Prop}
    (hLm : ∀ t m, L t → L { t with memory := m })
    (hLi : ∀ t v, L t → L (setVarHOLFinite (nm "i") v t)) (step : Nat) (hn : n.toNat < 2 ^ 32) :
    ∀ (sts : List (Bool × Nat × ExpHOL 64)) (iv : BitVec 64), (∀ e ∈ sts, e.2.1 < step) →
      (∀ e ∈ sts, e.1 = false → ∀ (t : PanSemStateFiniteExact 64 σ) val, ev t e.2.2 = some val →
        ∃ x, val = .val x) → iv.toNat + step ≤ n.toNat →
      Hoare σ X (SJ s0 dst n L iv) (stRun step sts)
        (fun r t => r = none ∧ SJ s0 dst n L (iv + BitVec.ofNat 64 step) t)
  | [], iv, _, _, hstep => by
      refine hoare_assign fun t _ ⟨hL, hd, hn', hi, hiv, hm⟩ v hv _ => ?_
      rw [ev_add2 (ev_lw hi) (ev_cw _ step)] at hv
      cases hv
      refine ⟨rfl, hLi _ _ hL, by rw [lk_set_ne _ _ (by decide)]; exact hd,
        by rw [lk_set_ne _ _ (by decide)]; exact hn', lk_set_self _ _ _, ?_, hm⟩
      rw [BitVec.toNat_add, BitVec.toNat_ofNat]
      have := n.isLt
      rw [Nat.mod_eq_of_lt (a := step) (by omega), Nat.mod_eq_of_lt (by omega)]
      exact hstep
  | (b, k, v) :: rest, iv, hk, hv, hstep => by
      have hk1 := hk (b, k, v) List.mem_cons_self
      simp only at hk1
      refine hoare_seq (hoare_st1 hLm b k v (fun hb => hv (b, k, v) List.mem_cons_self hb)
        (by omega)) (fun r t _ hr _ h => absurd h.1 hr)
        (hoare_pre (hoare_stRun hLm hLi step hn rest iv (fun e he => hk e (List.mem_cons_of_mem _ he))
          (fun e he => hv e (List.mem_cons_of_mem _ he)) hstep) (fun t _ h => h.2))

theorem hoare_stLoop {s0 : PanSemStateFiniteExact 64 σ} {dst n : BitVec 64}
    {L : PanSemStateFiniteExact 64 σ → Prop}
    (hLm : ∀ t m, L t → L { t with memory := m })
    (hLi : ∀ t v, L t → L (setVarHOLFinite (nm "i") v t))
    (hLc : ∀ t, L t → L (decClockHOLFinite t)) (step : Nat) (hst : step < 2 ^ 32)
    (hn : n.toNat < 2 ^ 32) (sts : List (Bool × Nat × ExpHOL 64)) (hk : ∀ e ∈ sts, e.2.1 < step)
    (hv : ∀ e ∈ sts, e.1 = false → ∀ (t : PanSemStateFiniteExact 64 σ) val, ev t e.2.2 = some val →
        ∃ x, val = .val x) :
    Hoare σ X (fun t => ∃ iv, SJ s0 dst n L iv t) (stLoop step sts)
      (fun r t => r = none ∧ ∃ iv, SJ s0 dst n L iv t) := by
  refine hoare_while (fun s ⟨iv, hL, h2⟩ => ⟨iv, hLc _ hL, h2⟩) ?_ ?_
  · refine hoare_pre (P := fun t => ∃ iv, iv.toNat + step ≤ n.toNat ∧ SJ s0 dst n L iv t) ?_ ?_
    · refine hoare_exists fun iv => hoare_pure fun hstep => ?_
      refine hoare_post (hoare_stRun hLm hLi step hn sts iv hk hv hstep) ?_
      intro r t _ _ ⟨hr, hJ⟩
      subst hr
      exact ⟨fun _ => ⟨_, hJ⟩, nofun, nofun, fun _ => nofun⟩
    · intro t _ ⟨⟨iv, hJ⟩, w, hw, hw0⟩
      obtain ⟨hL, hd, hn', hi, hiv, hm⟩ := hJ
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw hn'] at hx; cases hx
      rw [ev_add2 (ev_lw hi) (ev_cw _ step)] at hy; cases hy
      refine ⟨iv, ?_, hL, hd, hn', hi, hiv, hm⟩
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_true',
        decide_eq_false_iff_not, BitVec.lt_def, BitVec.toNat_add, BitVec.toNat_ofNat] at hxy
      have := iv.isLt
      rw [Nat.mod_eq_of_lt (a := step) (by omega), Nat.mod_eq_of_lt (by omega)] at hxy
      omega
  · intro t _ hI _
    exact ⟨rfl, hI⟩

theorem hoare_stLoop1 {s0 : PanSemStateFiniteExact 64 σ} {dst n : BitVec 64}
    {L : PanSemStateFiniteExact 64 σ → Prop}
    (hLm : ∀ t m, L t → L { t with memory := m })
    (hLi : ∀ t v, L t → L (setVarHOLFinite (nm "i") v t))
    (hLc : ∀ t, L t → L (decClockHOLFinite t))
    (hn : n.toNat < 2 ^ 32) (sts : List (Bool × Nat × ExpHOL 64)) (hk : ∀ e ∈ sts, e.2.1 < 1)
    (hv : ∀ e ∈ sts, e.1 = false → ∀ (t : PanSemStateFiniteExact 64 σ) val, ev t e.2.2 = some val →
        ∃ x, val = .val x) :
    Hoare σ X (fun t => ∃ iv, SJ s0 dst n L iv t) (stLoop1 sts)
      (fun r t => r = none ∧ ∃ iv, SJ s0 dst n L iv t) := by
  refine hoare_while (fun s ⟨iv, hL, h2⟩ => ⟨iv, hLc _ hL, h2⟩) ?_ ?_
  · refine hoare_pre (P := fun t => ∃ iv, iv.toNat + 1 ≤ n.toNat ∧ SJ s0 dst n L iv t) ?_ ?_
    · refine hoare_exists fun iv => hoare_pure fun hstep => ?_
      refine hoare_post (hoare_stRun hLm hLi 1 hn sts iv hk hv hstep) ?_
      intro r t _ _ ⟨hr, hJ⟩
      subst hr
      exact ⟨fun _ => ⟨_, hJ⟩, nofun, nofun, fun _ => nofun⟩
    · intro t _ ⟨⟨iv, hJ⟩, w, hw, hw0⟩
      obtain ⟨hL, hd, hn', hi, hiv, hm⟩ := hJ
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw hi] at hx; cases hx
      rw [ev_lw hn'] at hy; cases hy
      exact ⟨iv, lower_true hxy, hL, hd, hn', hi, hiv, hm⟩
  · intro t _ hI _
    exact ⟨rfl, hI⟩

/-- What a returning `memzero(dst, n)` call did. -/
def MzR (vs : List (ValueHOL 64)) (s0 : PanSemStateFiniteExact 64 σ) (_v : ValueHOL 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ dst n : BitVec 64, vs = [.val (.word dst), .val (.word n)] ∧
    (n.toNat < 2 ^ 32 → ∀ c, ¬ FpCells dst n c → t.memory c = s0.memory c)

/-- What a returning `memcpy(dst, src, n)` call did. -/
def McR (vs : List (ValueHOL 64)) (s0 : PanSemStateFiniteExact 64 σ) (_v : ValueHOL 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ dst src n : BitVec 64, vs = [.val (.word dst), .val (.word src), .val (.word n)] ∧
    (n.toNat < 2 ^ 32 → ∀ c, ¬ FpCells dst n c → t.memory c = s0.memory c)

theorem stLoops_tail {s0 : PanSemStateFiniteExact 64 σ} {dst n : BitVec 64}
    {L : PanSemStateFiniteExact 64 σ → Prop}
    (hLm : ∀ t m, L t → L { t with memory := m })
    (hLi : ∀ t v, L t → L (setVarHOLFinite (nm "i") v t))
    (hLc : ∀ t, L t → L (decClockHOLFinite t)) (hn : n.toNat < 2 ^ 32)
    (s8 s1 : List (Bool × Nat × ExpHOL 64)) (hk8 : ∀ e ∈ s8, e.2.1 < 8) (hk1 : ∀ e ∈ s1, e.2.1 < 1)
    (hb8 : ∀ e ∈ s8, e.1 = true) (hb1 : ∀ e ∈ s1, e.1 = true)
    (Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop)
    (hQ : ∀ t v, (∀ c, ¬ FpCells dst n c → t.memory c = s0.memory c) →
      Q (some (.returned v)) (emptyLocalsHOLFinite t)) :
    Hoare σ X (fun t => ∃ iv, SJ s0 dst n L iv t)
      (.seq (stLoop 8 s8) (.seq (stLoop1 s1) (.return (cw 0)))) Q := by
  refine hoare_seq (hoare_stLoop hLm hLi hLc 8 (by norm_num) hn s8 hk8
      (fun e he hb => by rw [hb8 e he] at hb; cases hb))
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  refine hoare_pre (hoare_seq (hoare_stLoop1 hLm hLi hLc hn s1 hk1
      (fun e he hb => by rw [hb1 e he] at hb; cases hb))
    (fun r t _ hr _ h => absurd h.1 hr) ?_) (fun t _ h => h.2)
  refine hoare_pre (hoare_return fun t _ ⟨iv, _, _, _, _, _, hm⟩ v _ => hQ t v hm) (fun t _ h => h.2)

theorem cw0_val : ∀ (t : PanSemStateFiniteExact 64 σ) (val : ValueHOL 64),
    ev t (cw 0) = some val → ∃ x, val = .val x := by
  intro t val h
  rw [ev_cw] at h
  cases h
  exact ⟨_, rfl⟩

theorem funSpec_memzero (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memzero") (fun vs s r t => ∀ v, r = .returned v → MzR vs s v t) := by
  apply funSpec_of_hoare
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_memzero (by decide) hl
  obtain ⟨dst, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨n, rfl⟩ := val_of_shapeEq_one hB
  by_cases hn : n.toNat < 2 ^ 32
  swap
  · intro s _ _ _ v _
    exact ⟨dst, n, rfl, fun h => absurd h hn⟩
  have hd0 : s0.locals.lookup (nm "dst") = some (.val (.word dst)) := by rw [hloc]; exact hla
  have hn0 : s0.locals.lookup (nm "n") = some (.val (.word n)) := by rw [hloc]; exact hlb
  refine hoare_dec fun s _ hs v hv _ => ?_
  subst s
  cases hv
  refine hoare_seq (R := fun r t => r = none ∧ ∃ iv, SJ s0 dst n (fun _ => True) iv t) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (P := fun t => ∃ iv, SJ s0 dst n (fun _ => True) iv t) ?_ ?_
    · refine hoare_ite ?_ ?_
      · refine hoare_pre (hoare_seq (hoare_stLoop (fun _ _ h => h) (fun _ _ h => h) (fun _ h => h)
          32 (by norm_num) hn _ (by simp [zw])
          (fun e he _ => by
            simp only [zw, List.mem_cons, List.not_mem_nil, or_false] at he
            rcases he with rfl | rfl | rfl | rfl <;> exact cw0_val))
          (fun r t _ hr _ h => absurd h.1 hr)
          (hoare_pre (hoare_stLoop (fun _ _ h => h) (fun _ _ h => h) (fun _ h => h) 8 (by norm_num)
            hn [zw 0] (by simp [zw])
            (fun e he _ => by simp only [List.mem_singleton] at he; subst he; exact cw0_val))
            (fun t _ h => h.2))) (fun t _ h => h.1)
      · exact hoare_skip fun t _ h => ⟨rfl, h.1⟩
    · intro t _ ht
      subst ht
      exact ⟨BitVec.ofNat 64 0, trivial, by rw [lk_set_ne _ _ (by decide)]; exact hd0,
        by rw [lk_set_ne _ _ (by decide)]; exact hn0, lk_set_self _ _ _, by simp, fun c _ => rfl⟩
  · refine hoare_pre (stLoops_tail (fun _ _ h => h) (fun _ _ h => h) (fun _ h => h) hn _ _
      (by simp [zb]) (by simp [zb]) (by simp [zb]) (by simp [zb]) _ ?_) (fun t _ h => h.2)
    intro t v hm w hw
    exact ⟨dst, n, rfl, fun _ => hm⟩

theorem funSpec_memcpy (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memcpy") (fun vs s r t => ∀ v, r = .returned v → McR vs s v t) := by
  apply funSpec_of_hoare
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, rfl, hA, hB, hCs, hla, hlb, hlc⟩ :=
    lookupCode_three code_memcpy (by decide) (by decide) (by decide) hl
  obtain ⟨dst, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨src, rfl⟩ := val_of_shapeEq_one hB
  obtain ⟨n, rfl⟩ := val_of_shapeEq_one hCs
  by_cases hn : n.toNat < 2 ^ 32
  swap
  · intro s _ _ _ v _
    exact ⟨dst, src, n, rfl, fun h => absurd h hn⟩
  have hd0 : s0.locals.lookup (nm "dst") = some (.val (.word dst)) := by rw [hloc]; exact hla
  have hs0 : s0.locals.lookup (nm "src") = some (.val (.word src)) := by rw [hloc]; exact hlb
  have hn0 : s0.locals.lookup (nm "n") = some (.val (.word n)) := by rw [hloc]; exact hlc
  refine hoare_dec fun s _ hs v hv _ => ?_
  subst s
  cases hv
  let L : PanSemStateFiniteExact 64 σ → Prop := fun t =>
    t.locals.lookup (nm "src") = some (.val (.word src))
  have hLm : ∀ (t : PanSemStateFiniteExact 64 σ) m, L t → L { t with memory := m } := fun _ _ h => h
  have hLi : ∀ (t : PanSemStateFiniteExact 64 σ) v, L t → L (setVarHOLFinite (nm "i") v t) :=
    fun t v h => by show (setVarHOLFinite _ _ t).locals.lookup _ = _; rw [lk_set_ne _ _ (by decide)]; exact h
  have hLc : ∀ (t : PanSemStateFiniteExact 64 σ), L t → L (decClockHOLFinite t) := fun _ h => h
  have hwv : ∀ e ∈ [cw' 0, cw' 8, cw' 16, cw' 24], e.1 = false →
      ∀ (t : PanSemStateFiniteExact 64 σ) val, ev t e.2.2 = some val → ∃ x, val = .val x := by
    intro e he _ t val hval
    simp only [cw', List.mem_cons, List.not_mem_nil, or_false] at he
    rcases he with rfl | rfl | rfl | rfl <;>
    · obtain ⟨w, -, -, rfl⟩ := ev_load_one hval
      exact ⟨_, rfl⟩
  refine hoare_seq (R := fun r t => r = none ∧ ∃ iv, SJ s0 dst n L iv t) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (P := fun t => ∃ iv, SJ s0 dst n L iv t) ?_ ?_
    · refine hoare_ite ?_ ?_
      · refine hoare_pre (hoare_seq (hoare_stLoop hLm hLi hLc 32 (by norm_num) hn _
          (by simp [cw']) hwv) (fun r t _ hr _ h => absurd h.1 hr)
          (hoare_pre (hoare_stLoop hLm hLi hLc 8 (by norm_num) hn [cw' 0] (by simp [cw'])
            (fun e he => hwv e (by simp only [List.mem_singleton] at he; subst he; simp)))
            (fun t _ h => h.2))) (fun t _ h => h.1)
      · exact hoare_skip fun t _ h => ⟨rfl, h.1⟩
    · intro t _ ht
      subst ht
      exact ⟨BitVec.ofNat 64 0, hLi s0 _ hs0,
        by rw [lk_set_ne _ _ (by decide)]; exact hd0,
        by rw [lk_set_ne _ _ (by decide)]; exact hn0, lk_set_self _ _ _, by simp, fun c _ => rfl⟩
  · refine hoare_pre (stLoops_tail hLm hLi hLc hn _ _
      (by simp [cb']) (by simp [cb']) (by simp [cb']) (by simp [cb']) _ ?_) (fun t _ h => h.2)
    intro t v hm w hw
    exact ⟨dst, src, n, rfl, fun _ => hm⟩

end InitECandidate.Solver.Spec.Fq12
