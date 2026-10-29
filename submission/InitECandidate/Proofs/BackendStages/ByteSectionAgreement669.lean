import InitECandidate.Proofs.BackendStages.BytesData669
import InitECandidate.Proofs.BackendStages.BytePiecesData669
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section669_eq : ByteData.bytes669 = [piece669_0].flatten := by
  rw [piece669_0_eq]
  rfl
#print axioms section669_eq
end InitECandidate.Proofs.BackendStages.BytePieces
