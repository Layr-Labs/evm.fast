import InitECandidate.Proofs.BackendStages.BytePiecesData652
import InitECandidate.Proofs.BackendStages.BytePiecesData653
import InitECandidate.Proofs.BackendStages.BytePiecesData654
import InitECandidate.Proofs.BackendStages.BytePiecesData655
import InitECandidate.Bytes139
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate139_eq : InitECandidate.bytes139 = [piece652_1, piece653_0, piece654_0, piece655_0].flatten := by
  rw [piece652_1_eq, piece653_0_eq, piece654_0_eq, piece655_0_eq]
  rfl
#print axioms candidate139_eq
end InitECandidate.Proofs.BackendStages.BytePieces
