import InitECandidate.Proofs.BackendStages.BytesData861
import InitECandidate.Proofs.BackendStages.BytePiecesData861
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section861_eq : ByteData.bytes861 = [piece861_0].flatten := by
  rw [piece861_0_eq]
  rfl
#print axioms section861_eq
end InitECandidate.Proofs.BackendStages.BytePieces
