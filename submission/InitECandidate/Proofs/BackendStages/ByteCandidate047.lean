import InitECandidate.Proofs.BackendStages.BytePiecesData256
import InitECandidate.Proofs.BackendStages.BytePiecesData257
import InitECandidate.Proofs.BackendStages.BytePiecesData258
import InitECandidate.Proofs.BackendStages.BytePiecesData259
import InitECandidate.Bytes047
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate047_eq : InitECandidate.bytes047 = [piece256_1, piece257_0, piece258_0, piece259_0].flatten := by
  rw [piece256_1_eq, piece257_0_eq, piece258_0_eq, piece259_0_eq]
  rfl
#print axioms candidate047_eq
end InitECandidate.Proofs.BackendStages.BytePieces
