import InitECandidate.Proofs.BackendStages.Alignment529
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_529 : List (Nat × Nat) :=
[(12, 392344), (11, 392332), (5, 392324), (4, 392304), (10, 392248), (9, 392220), (3, 392216), (2, 392200), (8, 392144),
  (1, 392112), (7, 392112)]
theorem localLabelsFinal_529_eq : LabToTarget.sectionLabels 392096 Alignment529.lines [] = (392344, localLabelsFinal_529) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_529_eq
end InitECandidate.Proofs.BackendStages
