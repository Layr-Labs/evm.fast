import InitECandidate.Proofs.BackendStages.BytesData356
import InitECandidate.Proofs.BackendStages.BytePiecesData356
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section356_eq : ByteData.bytes356 = [piece356_0].flatten := by
  rw [piece356_0_eq]
  rfl
#print axioms section356_eq
end InitECandidate.Proofs.BackendStages.BytePieces
