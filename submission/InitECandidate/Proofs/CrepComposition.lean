import InitECandidate.Proofs.CrepComputation

/-! Compose individually checked compiler outputs without reducing their bodies. -/
set_option autoImplicit false
namespace InitECandidate.Proofs.CrepComputation

def checkedOutputs {α β : Type} (f : α → Option β) : List α → List β → Prop
  | [], [] => True
  | input :: inputs, output :: outputs => f input = some output ∧ checkedOutputs f inputs outputs
  | _, _ => False

theorem filterMap_eq_checked {α β : Type} (f : α → Option β)
    (inputs : List α) (outputs : List β)
    (checked : checkedOutputs f inputs outputs) :
    inputs.filterMap f = outputs := by
  induction inputs generalizing outputs with
  | nil =>
      cases outputs with
      | nil => rfl
      | cons => cases checked
  | cons input inputs ih =>
      cases outputs with
      | nil => cases checked
      | cons output outputs =>
          rcases checked with ⟨head, tail⟩
          simp only [List.filterMap_cons, head, ih outputs tail]

#print axioms filterMap_eq_checked
end InitECandidate.Proofs.CrepComputation
