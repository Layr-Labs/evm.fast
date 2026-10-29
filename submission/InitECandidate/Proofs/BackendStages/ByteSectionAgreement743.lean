import InitECandidate.Proofs.BackendStages.BytesData743
import InitECandidate.Proofs.BackendStages.BytePiecesData743
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section743_eq : ByteData.bytes743 = [piece743_0].flatten := by
  rw [piece743_0_eq]
  rfl
#print axioms section743_eq
end InitECandidate.Proofs.BackendStages.BytePieces
