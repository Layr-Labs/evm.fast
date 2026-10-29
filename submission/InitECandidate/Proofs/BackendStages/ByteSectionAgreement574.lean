import InitECandidate.Proofs.BackendStages.BytesData574
import InitECandidate.Proofs.BackendStages.BytePiecesData574
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section574_eq : ByteData.bytes574 = [piece574_0, piece574_1].flatten := by
  rw [piece574_0_eq, piece574_1_eq]
  rfl
#print axioms section574_eq
end InitECandidate.Proofs.BackendStages.BytePieces
