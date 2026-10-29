import InitECandidate.Proofs.BackendStages.BytesData684
import InitECandidate.Proofs.BackendStages.BytePiecesData684
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section684_eq : ByteData.bytes684 = [piece684_0, piece684_1].flatten := by
  rw [piece684_0_eq, piece684_1_eq]
  rfl
#print axioms section684_eq
end InitECandidate.Proofs.BackendStages.BytePieces
