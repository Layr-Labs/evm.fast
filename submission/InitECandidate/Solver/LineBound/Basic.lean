import InitECandidate.Solver.Compiler.LabToTarget.LineBound
import InitECandidate.Proofs.CompactComputation

/-!
# Line-length checks: section checker and list composition

`secLinesBoundedB L sec` is the per-section part of `linesBoundedB L` (the Boolean checker
of `LinesBounded L`). The lemmas here assemble `linesBoundedB L code = true` for a program
built by `::` / `++` from independently checked sections, without unfolding the sections.
-/

namespace InitECandidate.Solver.LineBound

open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabSem
open Flapjack.Compiler.Backend.LabToTarget
open InitECandidate.Solver.Compiler.LabToTarget

set_option autoImplicit false

/-- Per-section part of `linesBoundedB`: every line of `sec` has at most `L` bytes. -/
def secLinesBoundedB {width : Nat} [NeZero width] (L : Nat) (sec : LabSectionHOL width) : Bool :=
  sec.lines.all fun line => decide ((lineBytes line).length ≤ L)

theorem linesBoundedB_nil {width : Nat} [NeZero width] (L : Nat) :
    linesBoundedB L ([] : LabProgHOL width) = true := rfl

theorem linesBoundedB_cons {width : Nat} [NeZero width] (L : Nat) {sec : LabSectionHOL width}
    {rest : LabProgHOL width} (hsec : secLinesBoundedB L sec = true)
    (hrest : linesBoundedB L rest = true) : linesBoundedB L (sec :: rest) = true := by
  change (secLinesBoundedB L sec && linesBoundedB L rest) = true
  rw [hsec, hrest]
  rfl

theorem linesBoundedB_append {width : Nat} [NeZero width] (L : Nat) {first rest : LabProgHOL width}
    (hfirst : linesBoundedB L first = true) (hrest : linesBoundedB L rest = true) :
    linesBoundedB L (first ++ rest) = true := by
  simp only [linesBoundedB, List.all_append, Bool.and_eq_true] at hfirst hrest ⊢
  exact ⟨hfirst, hrest⟩

end InitECandidate.Solver.LineBound

#print axioms InitECandidate.Solver.LineBound.linesBoundedB_cons
#print axioms InitECandidate.Solver.LineBound.linesBoundedB_append
