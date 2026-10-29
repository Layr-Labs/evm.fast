import InitECandidate.Proofs.BackendStages.BytesData632
import InitECandidate.Proofs.BackendStages.BytePiecesData632
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section632_eq : ByteData.bytes632 = [piece632_0, piece632_1].flatten := by
  rw [piece632_0_eq, piece632_1_eq]
  rfl
#print axioms section632_eq
end InitECandidate.Proofs.BackendStages.BytePieces
