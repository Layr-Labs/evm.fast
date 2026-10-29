import InitECandidate.Proofs.BackendStages.BytesData336
import InitECandidate.Proofs.BackendStages.BytePiecesData336
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section336_eq : ByteData.bytes336 = [piece336_0, piece336_1].flatten := by
  rw [piece336_0_eq, piece336_1_eq]
  rfl
#print axioms section336_eq
end InitECandidate.Proofs.BackendStages.BytePieces
