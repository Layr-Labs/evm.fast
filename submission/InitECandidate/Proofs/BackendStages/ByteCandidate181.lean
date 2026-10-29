import InitECandidate.Proofs.BackendStages.BytePiecesData741
import InitECandidate.Proofs.BackendStages.BytePiecesData742
import InitECandidate.Proofs.BackendStages.BytePiecesData743
import InitECandidate.Proofs.BackendStages.BytePiecesData744
import InitECandidate.Bytes181
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate181_eq : InitECandidate.bytes181 = [piece741_1, piece742_0, piece743_0, piece744_0].flatten := by
  rw [piece741_1_eq, piece742_0_eq, piece743_0_eq, piece744_0_eq]
  rfl
#print axioms candidate181_eq
end InitECandidate.Proofs.BackendStages.BytePieces
