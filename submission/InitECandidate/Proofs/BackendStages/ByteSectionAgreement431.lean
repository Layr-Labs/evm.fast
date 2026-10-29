import InitECandidate.Proofs.BackendStages.BytesData431
import InitECandidate.Proofs.BackendStages.BytePiecesData431
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section431_eq : ByteData.bytes431 = [piece431_0].flatten := by
  rw [piece431_0_eq]
  rfl
#print axioms section431_eq
end InitECandidate.Proofs.BackendStages.BytePieces
