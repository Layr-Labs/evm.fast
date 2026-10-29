import InitECandidate.Proofs.BackendStages.BytesData602
import InitECandidate.Proofs.BackendStages.BytePiecesData602
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section602_eq : ByteData.bytes602 = [piece602_0].flatten := by
  rw [piece602_0_eq]
  rfl
#print axioms section602_eq
end InitECandidate.Proofs.BackendStages.BytePieces
