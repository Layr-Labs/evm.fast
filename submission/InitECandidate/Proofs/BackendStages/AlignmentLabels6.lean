import InitECandidate.Proofs.BackendStages.Alignment6
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_6 : List (Nat × Nat) :=
[(13, 1000), (1, 996), (10, 988), (11, 972), (12, 952), (9, 940), (3, 940), (5, 928), (6, 912), (7, 892), (4, 880),
  (8, 880), (2, 868)]
theorem localLabelsFinal_6_eq : LabToTarget.sectionLabels 848 Alignment6.lines [] = (1000, localLabelsFinal_6) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_6_eq
end InitECandidate.Proofs.BackendStages
