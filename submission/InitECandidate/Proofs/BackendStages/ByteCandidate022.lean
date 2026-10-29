import InitECandidate.Proofs.BackendStages.BytePiecesData161
import InitECandidate.Proofs.BackendStages.BytePiecesData162
import InitECandidate.Proofs.BackendStages.BytePiecesData163
import InitECandidate.Proofs.BackendStages.BytePiecesData164
import InitECandidate.Proofs.BackendStages.BytePiecesData165
import InitECandidate.Proofs.BackendStages.BytePiecesData166
import InitECandidate.Proofs.BackendStages.BytePiecesData167
import InitECandidate.Bytes022
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate022_eq : InitECandidate.bytes022 = [piece161_1, piece162_0, piece163_0, piece164_0, piece165_0, piece166_0, piece167_0].flatten := by
  rw [piece161_1_eq, piece162_0_eq, piece163_0_eq, piece164_0_eq, piece165_0_eq, piece166_0_eq, piece167_0_eq]
  rfl
#print axioms candidate022_eq
end InitECandidate.Proofs.BackendStages.BytePieces
