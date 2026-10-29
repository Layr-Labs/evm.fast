import InitECandidate.Proofs.BackendStages.BytesData726
import InitECandidate.Proofs.BackendStages.BytePiecesData726
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section726_eq : ByteData.bytes726 = [piece726_0].flatten := by
  rw [piece726_0_eq]
  rfl
#print axioms section726_eq
end InitECandidate.Proofs.BackendStages.BytePieces
