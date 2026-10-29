import InitECandidate.Proofs.BackendStages.Alignment216
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_216 : List (Nat × Nat) :=
[(2, 124064), (1, 124004)]
theorem localLabelsFinal_216_eq : LabToTarget.sectionLabels 124004 Alignment216.lines [] = (124064, localLabelsFinal_216) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_216_eq
end InitECandidate.Proofs.BackendStages
