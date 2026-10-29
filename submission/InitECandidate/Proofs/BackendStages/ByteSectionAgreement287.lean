import InitECandidate.Proofs.BackendStages.BytesData287
import InitECandidate.Proofs.BackendStages.BytePiecesData287
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section287_eq : ByteData.bytes287 = [piece287_0, piece287_1].flatten := by
  rw [piece287_0_eq, piece287_1_eq]
  rfl
#print axioms section287_eq
end InitECandidate.Proofs.BackendStages.BytePieces
