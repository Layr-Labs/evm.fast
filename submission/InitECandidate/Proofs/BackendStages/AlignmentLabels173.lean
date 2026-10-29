import InitECandidate.Proofs.BackendStages.Alignment173
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_173 : List (Nat × Nat) :=
[(5, 96108), (3, 96100), (4, 96092), (2, 96064), (1, 96060)]
theorem localLabelsFinal_173_eq : LabToTarget.sectionLabels 96060 Alignment173.lines [] = (96108, localLabelsFinal_173) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_173_eq
end InitECandidate.Proofs.BackendStages
