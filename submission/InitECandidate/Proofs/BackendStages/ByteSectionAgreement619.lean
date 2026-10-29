import InitECandidate.Proofs.BackendStages.BytesData619
import InitECandidate.Proofs.BackendStages.BytePiecesData619
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section619_eq : ByteData.bytes619 = [piece619_0, piece619_1].flatten := by
  rw [piece619_0_eq, piece619_1_eq]
  rfl
#print axioms section619_eq
end InitECandidate.Proofs.BackendStages.BytePieces
