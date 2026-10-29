import InitECandidate.Proofs.BackendStages.BytesData626
import InitECandidate.Proofs.BackendStages.BytePiecesData626
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section626_eq : ByteData.bytes626 = [piece626_0].flatten := by
  rw [piece626_0_eq]
  rfl
#print axioms section626_eq
end InitECandidate.Proofs.BackendStages.BytePieces
