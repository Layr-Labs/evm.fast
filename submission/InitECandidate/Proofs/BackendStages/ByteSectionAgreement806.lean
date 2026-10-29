import InitECandidate.Proofs.BackendStages.BytesData806
import InitECandidate.Proofs.BackendStages.BytePiecesData806
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section806_eq : ByteData.bytes806 = [piece806_0].flatten := by
  rw [piece806_0_eq]
  rfl
#print axioms section806_eq
end InitECandidate.Proofs.BackendStages.BytePieces
