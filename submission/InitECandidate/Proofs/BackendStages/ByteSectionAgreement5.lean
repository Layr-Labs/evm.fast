import InitECandidate.Proofs.BackendStages.BytesData5
import InitECandidate.Proofs.BackendStages.BytePiecesData5
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section5_eq : ByteData.bytes5 = [piece5_0].flatten := by
  rw [piece5_0_eq]
  rfl
#print axioms section5_eq
end InitECandidate.Proofs.BackendStages.BytePieces
