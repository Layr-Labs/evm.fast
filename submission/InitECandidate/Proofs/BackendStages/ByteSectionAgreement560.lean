import InitECandidate.Proofs.BackendStages.BytesData560
import InitECandidate.Proofs.BackendStages.BytePiecesData560
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section560_eq : ByteData.bytes560 = [piece560_0].flatten := by
  rw [piece560_0_eq]
  rfl
#print axioms section560_eq
end InitECandidate.Proofs.BackendStages.BytePieces
