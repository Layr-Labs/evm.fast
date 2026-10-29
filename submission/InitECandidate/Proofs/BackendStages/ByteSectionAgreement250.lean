import InitECandidate.Proofs.BackendStages.BytesData250
import InitECandidate.Proofs.BackendStages.BytePiecesData250
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section250_eq : ByteData.bytes250 = [piece250_0].flatten := by
  rw [piece250_0_eq]
  rfl
#print axioms section250_eq
end InitECandidate.Proofs.BackendStages.BytePieces
