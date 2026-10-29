import InitECandidate.Proofs.BackendStages.BytesData875
import InitECandidate.Proofs.BackendStages.BytePiecesData875
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section875_eq : ByteData.bytes875 = [piece875_0].flatten := by
  rw [piece875_0_eq]
  rfl
#print axioms section875_eq
end InitECandidate.Proofs.BackendStages.BytePieces
