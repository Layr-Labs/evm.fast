import InitECandidate.Proofs.BackendStages.BytesData93
import InitECandidate.Proofs.BackendStages.BytePiecesData93
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section93_eq : ByteData.bytes93 = [piece93_0].flatten := by
  rw [piece93_0_eq]
  rfl
#print axioms section93_eq
end InitECandidate.Proofs.BackendStages.BytePieces
