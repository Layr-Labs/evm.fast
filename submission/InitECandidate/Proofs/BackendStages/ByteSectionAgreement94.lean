import InitECandidate.Proofs.BackendStages.BytesData94
import InitECandidate.Proofs.BackendStages.BytePiecesData94
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section94_eq : ByteData.bytes94 = [piece94_0].flatten := by
  rw [piece94_0_eq]
  rfl
#print axioms section94_eq
end InitECandidate.Proofs.BackendStages.BytePieces
