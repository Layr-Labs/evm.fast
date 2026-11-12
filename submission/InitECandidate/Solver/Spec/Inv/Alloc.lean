import InitECandidate.Solver.Spec.Inv.HtabRead
import InitECandidate.Solver.Spec.Scratch

/-!
# The heap allocator `alloc`

* `code_alloc`: the body of `alloc` (`guest/src/lib/mem.pnk`), certified by `cbv`.
* `funSpec_alloc` (**the built-in allocator spec**): a returning `alloc(n)` started with word
  global `heap_ptr = P0` and `n ≤ HEAP_END - P0` (as words), returns `P0`, sets `heap_ptr` to
  `Q = (P0 + n + 7) & -8` with `Q ≤ HEAP_END`, keeps every other global, and writes no memory
  (`AllocRetH`).
* `allocH_nat`: with `P0 ≤ HEAP_END` and `P0 % 8 = 0`, the allocated block `[P0, P0 + n)` lies
  below `Q`, `Q` is 8-aligned and `Q ≤ HEAP_END`; for `n % 8 = 0`, `Q = P0 + n`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- `HEAP_END` (`0xb0000000`). -/
abbrev heapEnd : Nat := 2952790016

def hpN : MlS := nm "heap_ptr"

/-- `if c { trap_with(1); }` -/
def trapIf1 (c : ExpHOL 64) : ProgHOL 64 := .ite c (callD (nm "trap_with") [cw 1]) .skip

def allocHBody : ProgHOL 64 :=
  .dec (nm "p") .one (gv (nm "heap_ptr"))
    (.seq (trapIf1 (.cmp .lower (.op .sub [cw heapEnd, lv (nm "p")]) (lv (nm "n"))))
      (.dec (nm "q") .one (.op .and [.op .add [lv (nm "p"), lv (nm "n"), cw 7], .op .sub [cw 0, cw 8]])
        (.seq (trapIf1 (.cmp .lower (cw heapEnd) (lv (nm "q"))))
          (.seq (.assign .global (nm "heap_ptr") (lv (nm "q"))) (.return (lv (nm "p")))))))

theorem entry_alloc : fnEntry Guest.Software.guestFn_alloc =
    (nm "alloc", [(nm "n", .one)], allocHBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_alloc : guestCode (nm "alloc") = some ([(nm "n", .one)], allocHBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 7) (by decide)) ⟨_, rfl⟩
    entry_alloc

theorem land_mask8 (x : Nat) (hx : x < 2 ^ 64) : x &&& (2 ^ 64 - 8) = x / 8 * 8 := by
  apply Nat.eq_of_testBit_eq
  intro i
  rw [Nat.testBit_and]
  have h8 : x / 8 * 8 = x / 2 ^ 3 * 2 ^ 3 := rfl
  rw [h8, ← Nat.shiftLeft_eq, ← Nat.shiftRight_eq_div_pow, Nat.testBit_shiftLeft, Nat.testBit_shiftRight]
  have hm : (2 ^ 64 - 8 : Nat) = (2 ^ 61 - 1) * 2 ^ 3 := by decide
  rw [hm, ← Nat.shiftLeft_eq, Nat.testBit_shiftLeft, Nat.testBit_two_pow_sub_one]
  by_cases h3 : 3 ≤ i
  · simp only [h3, decide_true, Bool.true_and]
    have : 3 + (i - 3) = i := by omega
    rw [this]
    by_cases h64 : i < 64
    · simp only [show i - 3 < 61 by omega, decide_true, Bool.and_true]
    · simp only [show ¬ (i - 3 < 61) by omega, decide_false, Bool.and_false]
      have hxi : x < 2 ^ i := Nat.lt_of_lt_of_le hx (Nat.pow_le_pow_right (by decide) (by omega))
      rw [Nat.testBit_lt_two_pow hxi]
  · simp [h3]

/-- The mask `& -8` rounds down to a multiple of 8. -/
theorem toNat_mask8 (x : BitVec 64) :
    (x &&& ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0)).toNat = x.toNat / 8 * 8 := by
  have : ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0 : BitVec 64) = BitVec.ofNat 64 (2 ^ 64 - 8) := by
    decide
  rw [this, BitVec.toNat_and, BitVec.toNat_ofNat]
  exact land_mask8 _ x.isLt

variable {σ : Type} {X : Ctx 64}

/-- What a returning `alloc(n)` did, from entry state `s0` to final state `t`. -/
def AllocRetH (vs : List (ValueHOL 64)) (s0 : PanSemStateFiniteExact 64 σ) (v : ValueHOL 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ N P0 Q : BitVec 64, vs = [.val (.word N)] ∧
    s0.globals.lookup hpN = some (.val (.word P0)) ∧ v = .val (.word P0) ∧
    t.globals.lookup hpN = some (.val (.word Q)) ∧
    (∀ g, g ≠ hpN → t.globals.lookup g = s0.globals.lookup g) ∧ t.memory = s0.memory ∧
    N.toNat ≤ (BitVec.ofNat 64 heapEnd - P0).toNat ∧
    Q.toNat = (P0 + (N + BitVec.ofNat 64 7)).toNat / 8 * 8 ∧ Q.toNat ≤ heapEnd

/-- **The heap allocator.** -/
theorem funSpec_alloc (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "alloc") (fun vs s r t => ∀ v, r = .returned v → AllocRetH vs s v t) := by
  have hf := funRet_trap_with (σ := σ) hC
  apply funSpec_of_hoare
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_alloc hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hA
  refine hoare_dec fun s _ hs v hv hsh => ?_
  subst hs
  obtain ⟨P0, rfl⟩ := val_of_shapeEq_one hsh
  have hhp : s.globals.lookup hpN = some (.val (.word P0)) := hv
  have hn0 : s.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hla
  refine hoare_pre (P := fun t => t.locals.lookup (nm "p") = some (.val (.word P0)) ∧
      t.locals.lookup (nm "n") = some (.val (.word N)) ∧ t.globals = s.globals ∧
      t.memory = s.memory) ?_ ?_
  · refine hoare_guard_seq hf ?_
    refine hoare_dec fun t _ ⟨⟨hp, hn, hg, hm⟩, hc⟩ v hv hsh => ?_
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    obtain ⟨E, P0', hE, hP0', hxe⟩ := ev_sub2_inv hx
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxe
    subst hxe
    rw [ev_cw] at hE
    cases hE
    rw [ev_lw hp] at hP0'
    cases hP0'
    rw [ev_lw hn] at hy
    cases hy
    have h1 := lower_false hxy
    have hval : ev t (.op .and [.op .add [lv (nm "p"), lv (nm "n"), cw 7], .op .sub [cw 0, cw 8]]) =
        some (.val (.word ((P0 + (N + BitVec.ofNat 64 7)) &&&
          ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0)))) := by
      rw [ev_op2 (ev_add3 (ev_lw hp) (ev_lw hn) (ev_cw _ 7)) (ev_sub2 (ev_cw _ 0) (ev_cw _ 8))]
      rfl
    rw [hval] at hv
    cases hv
    generalize hQ : (P0 + (N + BitVec.ofNat 64 7)) &&& ((BitVec.ofNat 64 0 - BitVec.ofNat 64 8) &&& ~~~0) = Q
    have hQv : Q.toNat = (P0 + (N + BitVec.ofNat 64 7)).toNat / 8 * 8 := by
      rw [← hQ]; exact toNat_mask8 _
    refine hoare_pre (P := fun u => u.locals.lookup (nm "q") = some (.val (.word Q)) ∧
        u.locals.lookup (nm "p") = some (.val (.word P0)) ∧
        u.globals = s.globals ∧ u.memory = s.memory) ?_ ?_
    · refine hoare_guard_seq hf ?_
      refine hoare_seq (R := fun r u => r = none ∧
          u.locals.lookup (nm "p") = some (.val (.word P0)) ∧
          u.globals.lookup hpN = some (.val (.word Q)) ∧
          (∀ g, g ≠ hpN → u.globals.lookup g = s.globals.lookup g) ∧ u.memory = s.memory ∧
          Q.toNat ≤ heapEnd) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoare_assignK fun u _ ⟨⟨hq, hp', hg', hm'⟩, hc2⟩ w hw _ => ?_
        rw [ev_lw hq] at hw
        cases hw
        obtain ⟨x2, y2, hx2, hy2, hxy2⟩ := cmp_false hc2
        rw [ev_cw] at hx2
        cases hx2
        rw [ev_lw hq] at hy2
        cases hy2
        refine ⟨rfl, hp', ?_, ?_, hm', ?_⟩
        · show (u.globals.update (hpN, _)).lookup hpN = _
          exact lookup_update_self _ _ _
        · intro g hg
          show (u.globals.update (hpN, _)).lookup g = _
          rw [lookup_update_ne _ _ (Ne.symm hg), hg']
        · have := lower_false hxy2
          rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide)] at this
          exact this
      · refine hoare_return fun u _ ⟨_, hp', hhp', hgl, hm', hQle⟩ w hw => ?_
        rw [ev_lw hp'] at hw
        cases hw
        intro v hv
        simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
        subst hv
        exact ⟨N, P0, Q, rfl, hhp, rfl, hhp', hgl, hm', h1, hQv, hQle⟩
    · intro u _ hu
      subst hu
      refine ⟨lk_set_self _ _ _, ?_, hg, hm⟩
      rw [lk_set_ne _ _ (by decide)]; exact hp
  · intro t _ ht
    subst ht
    exact ⟨lk_set_self _ _ _, by rw [lk_set_ne _ _ (by decide)]; exact hn0, rfl, rfl⟩

/-- Numeric consequences of `AllocRetH` for an aligned heap pointer below `HEAP_END`. -/
theorem allocH_nat {N P0 Q : BitVec 64} (hP : P0.toNat ≤ heapEnd) (h8 : P0.toNat % 8 = 0)
    (h1 : N.toNat ≤ (BitVec.ofNat 64 heapEnd - P0).toNat)
    (hQ : Q.toNat = (P0 + (N + BitVec.ofNat 64 7)).toNat / 8 * 8) :
    P0.toNat + N.toNat ≤ heapEnd ∧ P0.toNat + N.toNat ≤ Q.toNat ∧ Q.toNat % 8 = 0 ∧
      Q.toNat < P0.toNat + N.toNat + 8 := by
  have hE : heapEnd = 2952790016 := rfl
  have hsub : (BitVec.ofNat 64 heapEnd - P0).toNat = heapEnd - P0.toNat := by
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide)]; exact hP),
      BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide)]
  rw [hsub] at h1
  rw [hE] at hP h1 ⊢
  have hadd : (P0 + (N + BitVec.ofNat 64 7)).toNat = P0.toNat + N.toNat + 7 := by
    simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
    omega
  rw [hadd] at hQ
  refine ⟨by omega, by omega, by omega, by omega⟩

end InitECandidate.Solver.Spec.Inv
