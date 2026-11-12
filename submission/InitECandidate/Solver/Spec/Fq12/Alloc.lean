import InitECandidate.Solver.Spec.Fq12.Align
import InitECandidate.Solver.Spec.Scratch

/-!
# `alloc` and the six coefficient buffers of `fq12_inv`

* `funSpec_alloc`: a returning `alloc(n)` call returns the entry `heap_ptr = P` and sets
  `heap_ptr = (P + n + 7) & -8`.
* `next_ptr`: that value is 8-aligned and `n ≤ next - P ≤ n + 7` (as an offset mod 2⁶⁴).
* `six_disj`: six consecutive 416-byte allocations are pairwise disjoint buffers (`Disj`),
  only the first one may be unaligned.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def hpN : MlS := nm "heap_ptr"

def allocBody : ProgHOL 64 :=
  .dec (nm "p") .one (gv hpN)
    (.seq (.ite (.cmp .lower (.op .sub [cw 2952790016, lv (nm "p")]) (lv (nm "n")))
        (callN (nm "trap_with") [cw 1]) .skip)
      (.dec (nm "q") .one (.op .and [.op .add [lv (nm "p"), lv (nm "n"), cw 7], .op .sub [cw 0, cw 8]])
        (.seq (.ite (.cmp .lower (cw 2952790016) (lv (nm "q"))) (callN (nm "trap_with") [cw 1]) .skip)
          (.seq (.assign .global hpN (lv (nm "q"))) (.return (lv (nm "p")))))))

theorem entry_alloc : fnEntry Guest.Software.guestFn_alloc =
    (nm "alloc", [(nm "n", .one)], allocBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_alloc : guestCode (nm "alloc") = some ([(nm "n", .one)], allocBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by decide)) ⟨_, rfl⟩
    entry_alloc

/-- The next heap pointer. -/
def nextP (P N : BitVec 64) : BitVec 64 :=
  (P + (N + (BitVec.ofNat 64 7 + 0))) &&& ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0)

variable {σ : Type} {X : Ctx 64}

/-- What a returning `alloc(n)` call did. -/
def AllocR (vs : List (ValueHOL 64)) (s0 : PanSemStateFiniteExact 64 σ) (v : ValueHOL 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ N P : BitVec 64, vs = [.val (.word N)] ∧ s0.globals.lookup hpN = some (.val (.word P)) ∧
    v = .val (.word P) ∧ t.globals.lookup hpN = some (.val (.word (nextP P N)))

theorem funSpec_alloc (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "alloc") (fun vs s r t => ∀ v, r = .returned v → AllocR vs s v t) := by
  have hf := funRet_trap_with (σ := σ) hC
  apply funSpec_of_hoare
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_alloc hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hA
  refine hoare_dec fun s _ hs v hv hsh => ?_
  subst s
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsh
  have hhp : s0.globals.lookup hpN = some (.val (.word P)) := hv
  have hn0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hla
  refine hoare_pre (P := fun t => t.locals.lookup (nm "p") = some (.val (.word P)) ∧
      t.locals.lookup (nm "n") = some (.val (.word N))) ?_ ?_
  · refine hoare_guard_seq hf ?_
    refine hoare_dec fun t _ ⟨⟨hp, hn⟩, _⟩ v hv _ => ?_
    have hval : ev t (.op .and [.op .add [lv (nm "p"), lv (nm "n"), cw 7], .op .sub [cw 0, cw 8]]) =
        some (.val (.word (nextP P N))) := by
      have h1 : evs t [lv (nm "p"), lv (nm "n"), cw 7] = some ([P, N, BitVec.ofNat 64 7].map
          fun w => .val (.word w)) :=
        evs_cons (ev_lw hp) (evs_cons (ev_lw hn) (evs_cons (ev_cw _ 7) evs_nil))
      rw [ev_op2 (ev_op h1) (ev_sub2 (ev_cw _ 0) (ev_cw _ 8))]
      rfl
    rw [hval] at hv
    cases hv
    refine hoare_pre (P := fun u => u.locals.lookup (nm "q") = some (.val (.word (nextP P N))) ∧
        u.locals.lookup (nm "p") = some (.val (.word P))) ?_ ?_
    · refine hoare_guard_seq hf ?_
      refine hoare_seq (R := fun r u => r = none ∧
          u.locals.lookup (nm "p") = some (.val (.word P)) ∧
          u.globals.lookup hpN = some (.val (.word (nextP P N)))) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_assignK fun u _ ⟨⟨hq, hp'⟩, _⟩ w hw _ => ?_
        rw [ev_lw hq] at hw
        cases hw
        exact ⟨rfl, hp', lookup_update_self _ _ _⟩
      · refine hoare_return fun u _ ⟨_, hp', hg⟩ w hw => ?_
        rw [ev_lw hp'] at hw
        cases hw
        intro v hv
        simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
        subst hv
        exact ⟨N, P, rfl, hhp, rfl, hg⟩
    · intro u _ hu
      subst hu
      exact ⟨lk_set_self _ _ _, by rw [lk_set_ne _ _ (by decide)]; exact hp⟩
  · intro t _ ht
    subst ht
    exact ⟨lk_set_self _ _ _, by rw [lk_set_ne _ _ (by decide)]; exact hn0⟩

/-! ## The layout of consecutive allocations -/

theorem nextP_eq (P N : BitVec 64) :
    nextP P N = (P + N + BitVec.ofNat 64 7) &&& BitVec.ofNat 64 18446744073709551608 := by
  unfold nextP
  rw [show (BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0 = BitVec.ofNat 64 18446744073709551608
    by decide]
  congr 1
  bv_omega

theorem mask_facts (z : BitVec 64) :
    (z &&& BitVec.ofNat 64 18446744073709551608) &&& BitVec.ofNat 64 7 = 0 ∧
      z - (z &&& BitVec.ofNat 64 18446744073709551608) < BitVec.ofNat 64 8 := by
  have hm0 : BitVec.ofNat 64 18446744073709551608 &&& BitVec.ofNat 64 7 = 0#64 := by decide
  have hm1 : BitVec.ofNat 64 18446744073709551608 ||| BitVec.ofNat 64 7 = BitVec.allOnes 64 := by
    decide
  have h1 : (z &&& BitVec.ofNat 64 18446744073709551608) &&& BitVec.ofNat 64 7 = 0 := by
    rw [BitVec.and_assoc, hm0, BitVec.and_zero]; rfl
  refine ⟨h1, ?_⟩
  -- `z = (z & M) + (z & 7)` with disjoint bits
  have hdis : (z &&& BitVec.ofNat 64 18446744073709551608) &&& (z &&& BitVec.ofNat 64 7) = 0 := by
    rw [BitVec.and_assoc, ← BitVec.and_assoc (BitVec.ofNat 64 18446744073709551608) z,
      BitVec.and_comm (BitVec.ofNat 64 18446744073709551608) z, BitVec.and_assoc z, hm0,
      BitVec.and_zero, BitVec.and_zero]; rfl
  have hsum : (z &&& BitVec.ofNat 64 18446744073709551608) + (z &&& BitVec.ofNat 64 7) = z := by
    rw [BitVec.add_eq_or_of_and_eq_zero _ _ hdis, ← BitVec.and_or_distrib_left, hm1,
      BitVec.and_allOnes]
  have e : z - (z &&& BitVec.ofNat 64 18446744073709551608) = z &&& BitVec.ofNat 64 7 := by
    conv => lhs; arg 1; rw [← hsum]
    generalize z &&& BitVec.ofNat 64 18446744073709551608 = u
    generalize z &&& BitVec.ofNat 64 7 = w
    bv_omega
  rw [e, BitVec.lt_def, BitVec.toNat_and, show (BitVec.ofNat 64 7).toNat = 2 ^ 3 - 1 from rfl,
    Nat.and_two_pow_sub_one_eq_mod]
  show _ < 8
  omega

theorem and7_eq_zero {y : BitVec 64} (h : y &&& BitVec.ofNat 64 7 = 0) : y.toNat % 8 = 0 := by
  have := congrArg BitVec.toNat h
  rw [BitVec.toNat_and, show (BitVec.ofNat 64 7).toNat = 2 ^ 3 - 1 from rfl,
    Nat.and_two_pow_sub_one_eq_mod] at this
  simpa using this

/-- The next heap pointer is aligned and `n ≤ next - P ≤ n + 7`. -/
theorem next_ptr (P N : BitVec 64) (hN : N.toNat + 7 < 2 ^ 64) :
    (nextP P N).toNat % 8 = 0 ∧ N.toNat ≤ (nextP P N - P).toNat ∧
      (nextP P N - P).toNat ≤ N.toNat + 7 := by
  rw [nextP_eq]
  obtain ⟨h1, h2⟩ := mask_facts (P + N + BitVec.ofNat 64 7)
  generalize hz : P + N + BitVec.ofNat 64 7 = z at h1 h2
  generalize hy : z &&& BitVec.ofNat 64 18446744073709551608 = y at h1 h2
  refine ⟨and7_eq_zero h1, ?_⟩
  rw [BitVec.lt_def, show (BitVec.ofNat 64 8).toNat = 8 from rfl] at h2
  have hzP : (z - P).toNat = N.toNat + 7 := by
    rw [← hz]; rw [BitVec.toNat_sub, BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_ofNat]
    have := P.isLt; have := N.isLt
    omega
  have e : y - P = (z - P) - (z - y) := by bv_omega
  rw [e, BitVec.toNat_sub]
  have := (z - y).isLt
  omega

/-- The cells of a buffer, as offsets from its base. -/
theorem inBuf_off {x c : BitVec 64} (h : InBuf x c) :
    (c - x).toNat < 416 ∨ 2 ^ 64 - 7 ≤ (c - x).toNat := by
  obtain ⟨i, hi, h | h⟩ := h
  · left; subst h
    rw [show x + BitVec.ofNat 64 i - x = BitVec.ofNat 64 i by bv_omega, BitVec.toNat_ofNat]
    omega
  · subst h
    have hb := ba_toNat (x + BitVec.ofNat 64 i)
    rw [BitVec.toNat_sub, hb]
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := i) (by omega)]
    have := x.isLt
    omega

theorem inBuf_off_aligned {x c : BitVec 64} (hx : x.toNat % 8 = 0) (h : InBuf x c) :
    (c - x).toNat < 416 := by
  obtain ⟨i, hi, h | h⟩ := h
  · subst h
    rw [show x + BitVec.ofNat 64 i - x = BitVec.ofNat 64 i by bv_omega, BitVec.toNat_ofNat]
    omega
  · subst h
    have hb := ba_toNat (x + BitVec.ofNat 64 i)
    rw [BitVec.toNat_sub, hb]
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := i) (by omega)]
    have := x.isLt
    omega

/-- Two buffers are disjoint when one is aligned and starts far enough after the other. -/
theorem disj_of_off {x y : BitVec 64} (hy : y.toNat % 8 = 0) (h1 : 416 ≤ (y - x).toNat)
    (h2 : (y - x).toNat + 416 + 7 ≤ 2 ^ 64) : Disj x y := by
  intro c hx hyc
  have a1 := inBuf_off hx
  have a2 := inBuf_off_aligned hy hyc
  have e : c - x = (c - y) + (y - x) := by bv_omega
  rw [e, BitVec.toNat_add] at a1
  rw [Nat.mod_eq_of_lt (by omega)] at a1
  omega

/-- The six consecutive 416-byte allocations of `fq12_inv`. -/
theorem six_disj (P0 P1 P2 P3 P4 P5 : BitVec 64) (h1 : P1 = nextP P0 (BitVec.ofNat 64 416))
    (h2 : P2 = nextP P1 (BitVec.ofNat 64 416)) (h3 : P3 = nextP P2 (BitVec.ofNat 64 416))
    (h4 : P4 = nextP P3 (BitVec.ofNat 64 416)) (h5 : P5 = nextP P4 (BitVec.ofNat 64 416)) :
    List.Pairwise Disj [P0, P1, P2, P3, P4, P5] := by
  have hN : (BitVec.ofNat 64 416).toNat = 416 := rfl
  obtain ⟨a1, b1, c1⟩ := next_ptr P0 (BitVec.ofNat 64 416) (by rw [hN]; omega)
  obtain ⟨a2, b2, c2⟩ := next_ptr P1 (BitVec.ofNat 64 416) (by rw [hN]; omega)
  obtain ⟨a3, b3, c3⟩ := next_ptr P2 (BitVec.ofNat 64 416) (by rw [hN]; omega)
  obtain ⟨a4, b4, c4⟩ := next_ptr P3 (BitVec.ofNat 64 416) (by rw [hN]; omega)
  obtain ⟨a5, b5, c5⟩ := next_ptr P4 (BitVec.ofNat 64 416) (by rw [hN]; omega)
  rw [← h1] at a1 b1 c1; rw [← h2] at a2 b2 c2; rw [← h3] at a3 b3 c3
  rw [← h4] at a4 b4 c4; rw [← h5] at a5 b5 c5
  rw [hN] at b1 c1 b2 c2 b3 c3 b4 c4 b5 c5
  -- offsets from `P0`
  have o2 : (P2 - P0).toNat = (P2 - P1).toNat + (P1 - P0).toNat := by
    rw [show P2 - P0 = (P2 - P1) + (P1 - P0) by bv_omega, BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  have o3 : (P3 - P0).toNat = (P3 - P2).toNat + (P2 - P0).toNat := by
    rw [show P3 - P0 = (P3 - P2) + (P2 - P0) by bv_omega, BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  have o4 : (P4 - P0).toNat = (P4 - P3).toNat + (P3 - P0).toNat := by
    rw [show P4 - P0 = (P4 - P3) + (P3 - P0) by bv_omega, BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  have o5 : (P5 - P0).toNat = (P5 - P4).toNat + (P4 - P0).toNat := by
    rw [show P5 - P0 = (P5 - P4) + (P4 - P0) by bv_omega, BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  -- differences between later buffers
  have dif : ∀ (y z : BitVec 64), (y - P0).toNat + 416 ≤ (z - P0).toNat → (z - P0).toNat < 2600 →
      (z - y).toNat = (z - P0).toNat - (y - P0).toNat := by
    intro y z hyz hz
    rw [show z - y = (z - P0) - (y - P0) by bv_omega, BitVec.toNat_sub]
    omega
  have dd : ∀ (y z : BitVec 64), z.toNat % 8 = 0 → (y - P0).toNat + 416 ≤ (z - P0).toNat →
      (z - P0).toNat < 2600 → Disj y z := by
    intro y z hz hyz hzl
    exact disj_of_off hz (by rw [dif y z hyz hzl]; omega) (by rw [dif y z hyz hzl]; omega)
  have z0 : (P0 - P0).toNat = 0 := by simp
  have al : ∀ y ∈ [P1, P2, P3, P4, P5], y.toNat % 8 = 0 := by
    intro y hy
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hy
    rcases hy with rfl | rfl | rfl | rfl | rfl <;> assumption
  refine List.Pairwise.cons ?_ (List.Pairwise.cons ?_ (List.Pairwise.cons ?_
    (List.Pairwise.cons ?_ (List.Pairwise.cons ?_ (List.Pairwise.cons (by simp) List.Pairwise.nil)))))
  · intro y hy
    have hal := al y hy
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hy
    rcases hy with rfl | rfl | rfl | rfl | rfl <;> exact dd _ _ hal (by omega) (by omega)
  · intro y hy
    have hal := al y (List.mem_cons_of_mem _ hy)
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hy
    rcases hy with rfl | rfl | rfl | rfl <;> exact dd _ _ hal (by omega) (by omega)
  · intro y hy
    have hal := al y (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hy))
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hy
    rcases hy with rfl | rfl | rfl <;> exact dd _ _ hal (by omega) (by omega)
  · intro y hy
    have hal := al y (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hy)))
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hy
    rcases hy with rfl | rfl <;> exact dd _ _ hal (by omega) (by omega)
  · intro y hy
    have hal := al y (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hy))))
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hy
    subst hy
    exact dd _ _ hal (by omega) (by omega)

end InitECandidate.Solver.Spec.Fq12
