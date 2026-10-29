import InitECandidate.Proofs.BackendStages.Alignment391
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_391 : List (Nat × Nat) :=
[(17, 300892), (9, 300876), (16, 300864), (15, 300856), (11, 300856), (3, 300844), (2, 300820), (10, 300764),
  (14, 300732), (13, 300728), (5, 300716), (4, 300692), (12, 300636), (8, 300540), (1, 300532), (7, 300532)]
theorem localLabelsFinal_391_eq : LabToTarget.sectionLabels 300516 Alignment391.lines [] = (300892, localLabelsFinal_391) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_391_eq
end InitECandidate.Proofs.BackendStages
