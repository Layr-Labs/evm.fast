import InitECandidate.Proofs.BackendStages.BytesData570
import InitECandidate.Proofs.BackendStages.BytePiecesData570
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section570_eq : ByteData.bytes570 = [piece570_0].flatten := by
  rw [piece570_0_eq]
  rfl
#print axioms section570_eq
end InitECandidate.Proofs.BackendStages.BytePieces
