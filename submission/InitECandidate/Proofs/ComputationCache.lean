import Lean

/-! Kernel-opaque values with checked defining equations. Unlike an axiom,
`boxedValue` has a kernel-checked body; its subtype carries the equation needed to
open a cache explicitly. Computation tactics cannot expand a large cached
value merely by increasing transparency. -/
namespace InitECandidate.Proofs.ComputationCache
universe u
opaque boxedValue {α : Type u} (value : α) : { result : α // result = value } :=
  ⟨value, rfl⟩

theorem boxedValue_eq {α : Type u} (value : α) : (boxedValue value).val = value :=
  (boxedValue value).property

#print axioms boxedValue_eq
end InitECandidate.Proofs.ComputationCache
