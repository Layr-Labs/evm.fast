import InitECandidate.Proofs.BackendStages.BytesData396
import InitECandidate.Proofs.BackendStages.BytePiecesData396
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section396_eq : ByteData.bytes396 = [piece396_0].flatten := by
  rw [piece396_0_eq]
  rfl
#print axioms section396_eq
end InitECandidate.Proofs.BackendStages.BytePieces
