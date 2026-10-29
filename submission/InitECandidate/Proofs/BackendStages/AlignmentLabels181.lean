import InitECandidate.Proofs.BackendStages.Alignment181
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_181 : List (Nat × Nat) :=
[(9, 97768), (8, 97756), (3, 97748), (2, 97724), (7, 97668), (6, 97636), (1, 97612), (5, 97612)]
theorem localLabelsFinal_181_eq : LabToTarget.sectionLabels 97596 Alignment181.lines [] = (97768, localLabelsFinal_181) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_181_eq
end InitECandidate.Proofs.BackendStages
