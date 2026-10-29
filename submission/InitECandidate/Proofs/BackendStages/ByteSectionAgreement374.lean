import InitECandidate.Proofs.BackendStages.BytesData374
import InitECandidate.Proofs.BackendStages.BytePiecesData374
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section374_eq : ByteData.bytes374 = [piece374_0].flatten := by
  rw [piece374_0_eq]
  rfl
#print axioms section374_eq
end InitECandidate.Proofs.BackendStages.BytePieces
