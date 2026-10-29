import InitECandidate.Proofs.BackendStages.BytesData624
import InitECandidate.Proofs.BackendStages.BytePiecesData624
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section624_eq : ByteData.bytes624 = [piece624_0, piece624_1].flatten := by
  rw [piece624_0_eq, piece624_1_eq]
  rfl
#print axioms section624_eq
end InitECandidate.Proofs.BackendStages.BytePieces
