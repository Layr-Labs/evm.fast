import InitECandidate.Proofs.BackendStages.BytesData637
import InitECandidate.Proofs.BackendStages.BytePiecesData637
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section637_eq : ByteData.bytes637 = [piece637_0].flatten := by
  rw [piece637_0_eq]
  rfl
#print axioms section637_eq
end InitECandidate.Proofs.BackendStages.BytePieces
