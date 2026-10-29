import InitECandidate.Proofs.BackendStages.BytesData720
import InitECandidate.Proofs.BackendStages.BytePiecesData720
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section720_eq : ByteData.bytes720 = [piece720_0, piece720_1].flatten := by
  rw [piece720_0_eq, piece720_1_eq]
  rfl
#print axioms section720_eq
end InitECandidate.Proofs.BackendStages.BytePieces
