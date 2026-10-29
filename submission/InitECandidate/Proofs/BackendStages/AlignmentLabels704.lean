import InitECandidate.Proofs.BackendStages.Alignment704
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_704 : List (Nat × Nat) :=
[(9, 702456), (8, 667028), (3, 667020), (2, 666996), (7, 666940), (6, 666900), (1, 666864), (5, 666864)]
theorem localLabelsFinal_704_eq : LabToTarget.sectionLabels 666848 Alignment704.lines [] = (702456, localLabelsFinal_704) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_704_eq
end InitECandidate.Proofs.BackendStages
