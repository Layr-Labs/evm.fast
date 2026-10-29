import InitECandidate.Proofs.BackendStages.BytesData380
import InitECandidate.Proofs.BackendStages.BytePiecesData380
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section380_eq : ByteData.bytes380 = [piece380_0].flatten := by
  rw [piece380_0_eq]
  rfl
#print axioms section380_eq
end InitECandidate.Proofs.BackendStages.BytePieces
