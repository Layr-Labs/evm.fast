import InitECandidate.Proofs.BackendStages.BytesData243
import InitECandidate.Proofs.BackendStages.BytePiecesData243
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section243_eq : ByteData.bytes243 = [piece243_0].flatten := by
  rw [piece243_0_eq]
  rfl
#print axioms section243_eq
end InitECandidate.Proofs.BackendStages.BytePieces
