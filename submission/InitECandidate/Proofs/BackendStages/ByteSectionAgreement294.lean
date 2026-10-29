import InitECandidate.Proofs.BackendStages.BytesData294
import InitECandidate.Proofs.BackendStages.BytePiecesData294
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section294_eq : ByteData.bytes294 = [piece294_0].flatten := by
  rw [piece294_0_eq]
  rfl
#print axioms section294_eq
end InitECandidate.Proofs.BackendStages.BytePieces
