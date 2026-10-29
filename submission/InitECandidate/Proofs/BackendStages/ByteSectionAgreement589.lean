import InitECandidate.Proofs.BackendStages.BytesData589
import InitECandidate.Proofs.BackendStages.BytePiecesData589
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section589_eq : ByteData.bytes589 = [piece589_0].flatten := by
  rw [piece589_0_eq]
  rfl
#print axioms section589_eq
end InitECandidate.Proofs.BackendStages.BytePieces
