import InitECandidate.Proofs.BackendStages.Alignment366
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_366 : List (Nat × Nat) :=
[(12, 283052), (11, 283008), (5, 282992), (4, 282960), (10, 282904), (9, 282864), (3, 282856), (2, 282832), (8, 282776),
  (1, 282732), (7, 282732)]
theorem localLabelsFinal_366_eq : LabToTarget.sectionLabels 282716 Alignment366.lines [] = (283052, localLabelsFinal_366) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_366_eq
end InitECandidate.Proofs.BackendStages
