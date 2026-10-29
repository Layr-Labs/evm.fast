import InitECandidate.Proofs.BackendStages.BytesData594
import InitECandidate.Proofs.BackendStages.BytePiecesData594
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section594_eq : ByteData.bytes594 = [piece594_0, piece594_1].flatten := by
  rw [piece594_0_eq, piece594_1_eq]
  rfl
#print axioms section594_eq
end InitECandidate.Proofs.BackendStages.BytePieces
