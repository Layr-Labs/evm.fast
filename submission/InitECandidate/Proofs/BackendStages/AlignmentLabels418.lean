import InitECandidate.Proofs.BackendStages.Alignment418
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_418 : List (Nat × Nat) :=
[(14, 312884), (13, 312872), (12, 312852), (5, 312844), (4, 312820), (11, 312764), (10, 312732), (9, 312712),
  (3, 312704), (2, 312680), (8, 312624), (1, 312596), (7, 312596)]
theorem localLabelsFinal_418_eq : LabToTarget.sectionLabels 312580 Alignment418.lines [] = (312884, localLabelsFinal_418) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_418_eq
end InitECandidate.Proofs.BackendStages
