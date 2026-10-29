import InitECandidate.Proofs.BackendStages.BytesData677
import InitECandidate.Proofs.BackendStages.BytePiecesData677
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section677_eq : ByteData.bytes677 = [piece677_0].flatten := by
  rw [piece677_0_eq]
  rfl
#print axioms section677_eq
end InitECandidate.Proofs.BackendStages.BytePieces
