import InitECandidate.Proofs.BackendStages.Alignment841
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_841 : List (Nat × Nat) :=
[(5, 910792), (3, 910784), (4, 910776), (2, 910720), (1, 910700)]
theorem localLabelsFinal_841_eq : LabToTarget.sectionLabels 910700 Alignment841.lines [] = (910792, localLabelsFinal_841) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_841_eq
end InitECandidate.Proofs.BackendStages
