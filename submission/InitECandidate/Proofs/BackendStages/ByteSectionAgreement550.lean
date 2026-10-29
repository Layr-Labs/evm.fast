import InitECandidate.Proofs.BackendStages.BytesData550
import InitECandidate.Proofs.BackendStages.BytePiecesData550
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section550_eq : ByteData.bytes550 = [piece550_0, piece550_1].flatten := by
  rw [piece550_0_eq, piece550_1_eq]
  rfl
#print axioms section550_eq
end InitECandidate.Proofs.BackendStages.BytePieces
