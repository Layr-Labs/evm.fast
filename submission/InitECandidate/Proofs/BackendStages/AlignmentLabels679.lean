import InitECandidate.Proofs.BackendStages.Alignment679
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_679 : List (Nat × Nat) :=
[(8, 604656), (7, 604532), (3, 604520), (2, 604496), (6, 604440), (1, 604392), (5, 604392)]
theorem localLabelsFinal_679_eq : LabToTarget.sectionLabels 604376 Alignment679.lines [] = (604656, localLabelsFinal_679) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_679_eq
end InitECandidate.Proofs.BackendStages
