import InitECandidate.Proofs.BackendStages.BytesData488
import InitECandidate.Proofs.BackendStages.BytePiecesData488
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section488_eq : ByteData.bytes488 = [piece488_0].flatten := by
  rw [piece488_0_eq]
  rfl
#print axioms section488_eq
end InitECandidate.Proofs.BackendStages.BytePieces
