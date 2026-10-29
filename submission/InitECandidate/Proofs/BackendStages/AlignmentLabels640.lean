import InitECandidate.Proofs.BackendStages.Alignment640
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_640 : List (Nat × Nat) :=
[(12, 535764), (7, 535748), (11, 535736), (10, 535720), (9, 535692), (3, 535676), (2, 535644), (8, 535588), (6, 535532),
  (1, 535520), (5, 535520)]
theorem localLabelsFinal_640_eq : LabToTarget.sectionLabels 535504 Alignment640.lines [] = (535764, localLabelsFinal_640) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_640_eq
end InitECandidate.Proofs.BackendStages
