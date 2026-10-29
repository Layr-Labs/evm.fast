import InitECandidate.Proofs.BackendStages.Alignment204
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_204 : List (Nat × Nat) :=
[(9, 108908), (8, 108864), (7, 108832), (3, 108808), (2, 108768), (6, 108712), (1, 108668), (5, 108668)]
theorem localLabelsFinal_204_eq : LabToTarget.sectionLabels 108652 Alignment204.lines [] = (108908, localLabelsFinal_204) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_204_eq
end InitECandidate.Proofs.BackendStages
