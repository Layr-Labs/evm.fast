import InitECandidate.Proofs.BackendStages.BytesData742
import InitECandidate.Proofs.BackendStages.BytePiecesData742
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section742_eq : ByteData.bytes742 = [piece742_0].flatten := by
  rw [piece742_0_eq]
  rfl
#print axioms section742_eq
end InitECandidate.Proofs.BackendStages.BytePieces
