import InitECandidate.Proofs.BackendStages.BytesData733
import InitECandidate.Proofs.BackendStages.BytePiecesData733
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section733_eq : ByteData.bytes733 = [piece733_0].flatten := by
  rw [piece733_0_eq]
  rfl
#print axioms section733_eq
end InitECandidate.Proofs.BackendStages.BytePieces
