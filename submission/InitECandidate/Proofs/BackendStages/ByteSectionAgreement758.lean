import InitECandidate.Proofs.BackendStages.BytesData758
import InitECandidate.Proofs.BackendStages.BytePiecesData758
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section758_eq : ByteData.bytes758 = [piece758_0, piece758_1].flatten := by
  rw [piece758_0_eq, piece758_1_eq]
  rfl
#print axioms section758_eq
end InitECandidate.Proofs.BackendStages.BytePieces
