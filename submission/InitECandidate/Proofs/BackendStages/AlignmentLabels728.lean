import InitECandidate.Proofs.BackendStages.Alignment728
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_728 : List (Nat × Nat) :=
[(16, 733168), (15, 733156), (7, 733148), (6, 733128), (14, 733072), (13, 733036), (5, 733004), (4, 732960),
  (12, 732904), (11, 732840), (3, 732832), (2, 732804), (10, 732748), (1, 732680), (9, 732680)]
theorem localLabelsFinal_728_eq : LabToTarget.sectionLabels 732664 Alignment728.lines [] = (733168, localLabelsFinal_728) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_728_eq
end InitECandidate.Proofs.BackendStages
