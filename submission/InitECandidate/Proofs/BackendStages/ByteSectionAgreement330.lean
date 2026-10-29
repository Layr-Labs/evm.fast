import InitECandidate.Proofs.BackendStages.BytesData330
import InitECandidate.Proofs.BackendStages.BytePiecesData330
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section330_eq : ByteData.bytes330 = [piece330_0].flatten := by
  rw [piece330_0_eq]
  rfl
#print axioms section330_eq
end InitECandidate.Proofs.BackendStages.BytePieces
