import InitECandidate.Proofs.BackendStages.BytesData162
import InitECandidate.Proofs.BackendStages.BytePiecesData162
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section162_eq : ByteData.bytes162 = [piece162_0].flatten := by
  rw [piece162_0_eq]
  rfl
#print axioms section162_eq
end InitECandidate.Proofs.BackendStages.BytePieces
