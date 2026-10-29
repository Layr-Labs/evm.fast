import InitECandidate.Proofs.BackendStages.BytesData308
import InitECandidate.Proofs.BackendStages.BytePiecesData308
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section308_eq : ByteData.bytes308 = [piece308_0].flatten := by
  rw [piece308_0_eq]
  rfl
#print axioms section308_eq
end InitECandidate.Proofs.BackendStages.BytePieces
