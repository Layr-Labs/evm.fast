import InitECandidate.Proofs.BackendStages.BytesData769
import InitECandidate.Proofs.BackendStages.BytePiecesData769
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section769_eq : ByteData.bytes769 = [piece769_0].flatten := by
  rw [piece769_0_eq]
  rfl
#print axioms section769_eq
end InitECandidate.Proofs.BackendStages.BytePieces
