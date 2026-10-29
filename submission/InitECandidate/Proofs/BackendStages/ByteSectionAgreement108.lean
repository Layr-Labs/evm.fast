import InitECandidate.Proofs.BackendStages.BytesData108
import InitECandidate.Proofs.BackendStages.BytePiecesData108
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section108_eq : ByteData.bytes108 = [piece108_0].flatten := by
  rw [piece108_0_eq]
  rfl
#print axioms section108_eq
end InitECandidate.Proofs.BackendStages.BytePieces
