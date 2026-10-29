import InitECandidate.Proofs.BackendStages.BytesData814
import InitECandidate.Proofs.BackendStages.BytePiecesData814
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section814_eq : ByteData.bytes814 = [piece814_0, piece814_1].flatten := by
  rw [piece814_0_eq, piece814_1_eq]
  rfl
#print axioms section814_eq
end InitECandidate.Proofs.BackendStages.BytePieces
