import InitECandidate.Solver.MemSafe.Mod.Args

set_option autoImplicit false

/-!
# `max`: the value spec

`max(a, b) = if b <+ a then a else b`: `funSpec_max` says the returned word `w` of `max(A, B)` has
`w.toNat = max A.toNat B.toNat`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Mod
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

def maxBody : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (lv (nm "b")) (lv (nm "a"))) (.return (lv (nm "a"))) .skip)
    (.return (lv (nm "b")))

theorem entry_max : fnEntry Guest.Software.guestFn_max =
    (nm "max", [(nm "a", .one), (nm "b", .one)], maxBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_max : guestCode (nm "max") = some ([(nm "a", .one), (nm "b", .one)], maxBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 32) (by decide)) ⟨_, rfl⟩
    entry_max

theorem funSpec_max (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "max") (fun vs s r t => Good (some r) → ∀ v, r = .returned v →
      ∀ A B : BitVec 64, vs = [V A, V B] → ∃ w, v = V w ∧ w.toNat = max A.toNat B.toNat) := by
  refine Helpers.funSpecG_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_max (by decide) hl
  obtain ⟨A', rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨B', rfl⟩ := val_of_shapeEq_one hB'
  have hla' : s0.locals.lookup (nm "a") = some (V A') := by rw [hloc]; exact hla
  have hlb' : s0.locals.lookup (nm "b") = some (V B') := by rw [hloc]; exact hlb
  unfold maxBody
  refine hoareG_seq (R := fun r t => (r = none → ¬ B'.toNat < A'.toNat ∧
        t.locals.lookup (nm "b") = some (V B')) ∧
      ∀ v, r = some (.returned v) → v = V A' ∧ B'.toNat < A'.toNat) ?_ ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun s _ ⟨hs, w, hw, hw0⟩ v hv => ?_
      subst hs
      rw [ev_cmp (ev_lw hlb') (ev_lw hla')] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      subst hw
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, BitVec.lt_def] at hw0
      refine ⟨fun h => absurd h (by simp), fun v' hv' => ?_⟩
      cases hv'
      rw [ev_lw hla'] at hv
      cases hv
      refine ⟨rfl, ?_⟩
      by_contra hcon
      exact hw0 (by simp [hcon])
    · refine hoareG_skip fun s _ ⟨hs, hw⟩ => ?_
      subst hs
      rw [ev_cmp (ev_lw hlb') (ev_lw hla')] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, BitVec.lt_def] at hw
      refine ⟨fun _ => ⟨?_, hlb'⟩, fun v h => absurd h (by simp)⟩
      by_contra hcon
      simp [hcon] at hw
  · intro r t _ hr _ h r' hr' v hv A B hvs
    subst hr'
    cases hv
    obtain ⟨hv, hlt⟩ := h.2 v rfl
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl⟩ := hvs
    exact ⟨A', hv, by omega⟩
  · refine hoareG_return fun t _ ht v hv r' hr' v' hv' A B hvs => ?_
    cases hr'
    cases hv'
    obtain ⟨hnlt, hlb2⟩ := ht.1 rfl
    rw [ev_lw hlb2] at hv
    cases hv
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl⟩ := hvs
    exact ⟨B', rfl, by omega⟩

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.funSpec_max
