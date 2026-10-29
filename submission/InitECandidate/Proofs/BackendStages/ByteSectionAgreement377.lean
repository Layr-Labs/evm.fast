import InitECandidate.Proofs.BackendStages.BytesData377
import InitECandidate.Proofs.BackendStages.BytePiecesData377
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section377_eq : ByteData.bytes377 = [piece377_0].flatten := by
  rw [piece377_0_eq]
  rfl
#print axioms section377_eq
end InitECandidate.Proofs.BackendStages.BytePieces
