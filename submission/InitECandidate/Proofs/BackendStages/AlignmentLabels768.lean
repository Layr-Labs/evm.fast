import InitECandidate.Proofs.BackendStages.Alignment768
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_768 : List (Nat × Nat) :=
[(8, 767556), (7, 767544), (3, 767536), (2, 767516), (6, 767460), (1, 767424), (5, 767424)]
theorem localLabelsFinal_768_eq : LabToTarget.sectionLabels 767408 Alignment768.lines [] = (767556, localLabelsFinal_768) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_768_eq
end InitECandidate.Proofs.BackendStages
