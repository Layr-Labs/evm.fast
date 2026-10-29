import InitECandidate.Proofs.BackendStages.BytesData608
import InitECandidate.Proofs.BackendStages.BytePiecesData608
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section608_eq : ByteData.bytes608 = [piece608_0].flatten := by
  rw [piece608_0_eq]
  rfl
#print axioms section608_eq
end InitECandidate.Proofs.BackendStages.BytePieces
