import InitECandidate.Proofs.BackendStages.BytesData821
import InitECandidate.Proofs.BackendStages.BytePiecesData821
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section821_eq : ByteData.bytes821 = [piece821_0].flatten := by
  rw [piece821_0_eq]
  rfl
#print axioms section821_eq
end InitECandidate.Proofs.BackendStages.BytePieces
