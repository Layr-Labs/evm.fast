import InitECandidate.Proofs.BackendStages.BytesData866
import InitECandidate.Proofs.BackendStages.BytePiecesData866
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section866_eq : ByteData.bytes866 = [piece866_0].flatten := by
  rw [piece866_0_eq]
  rfl
#print axioms section866_eq
end InitECandidate.Proofs.BackendStages.BytePieces
