import InitECandidate.Proofs.BackendStages.BytesData378
import InitECandidate.Proofs.BackendStages.BytePiecesData378
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section378_eq : ByteData.bytes378 = [piece378_0, piece378_1].flatten := by
  rw [piece378_0_eq, piece378_1_eq]
  rfl
#print axioms section378_eq
end InitECandidate.Proofs.BackendStages.BytePieces
