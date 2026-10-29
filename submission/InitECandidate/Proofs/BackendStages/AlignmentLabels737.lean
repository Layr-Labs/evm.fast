import InitECandidate.Proofs.BackendStages.Alignment737
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_737 : List (Nat × Nat) :=
[(2, 736036), (1, 736028)]
theorem localLabelsFinal_737_eq : LabToTarget.sectionLabels 736028 Alignment737.lines [] = (736036, localLabelsFinal_737) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_737_eq
end InitECandidate.Proofs.BackendStages
