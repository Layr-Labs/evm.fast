import InitECandidate.Solver.MemSafe.Trie.Rules
import InitECandidate.Solver.Spec.Mpt.Leaves.All
import InitECandidate.Solver.MemSafe.Rec.TxEncR
import InitECandidate.Solver.MemSafe.Rec.UMin

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# Exception-inclusive leaf specs of the encoder chain
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- Memory and globals as at `s`. -/
def Clean (s t : State σ) : Prop := t.memory = s.memory ∧ t.globals = s.globals

/-- `mpt_fail` raises and changes nothing. -/
theorem spec_mpt_fail (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "mpt_fail") (fun _ s r t => Good (some r) → Clean s t ∧ ∀ v, r ≠ .returned v) := by
  refine funSpecG_of_hoareG (R := fun _ s r t => Clean s t ∧ ∀ v, r ≠ .returned v) ?_
  intro vs body callee rs hl s0 hs hloc
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_mpt_fail hl
  unfold mptFailBody
  refine hoareG_seq (R := fun r t => r ≠ none ∧ ∀ r', r = some r' → Clean s0 t ∧ ∀ v, r' ≠ .returned v)
    ?_ (fun r t _ _ _ h => h.2) ?_
  · refine hoareG_raise fun s hs hp v hv => ?_
    subst hp
    exact ⟨by simp, fun r' hr' => by cases hr'; exact ⟨⟨rfl, rfl⟩, fun v h => nomatch h⟩⟩
  · exact hoareG_false fun _ _ h => absurd rfl h.1

end InitECandidate.Solver.MemSafe.Trie
