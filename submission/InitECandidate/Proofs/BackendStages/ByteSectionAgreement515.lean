import InitECandidate.Proofs.BackendStages.BytesData515
import InitECandidate.Proofs.BackendStages.BytePiecesData515
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section515_eq : ByteData.bytes515 = [piece515_0].flatten := by
  rw [piece515_0_eq]
  rfl
#print axioms section515_eq
end InitECandidate.Proofs.BackendStages.BytePieces
