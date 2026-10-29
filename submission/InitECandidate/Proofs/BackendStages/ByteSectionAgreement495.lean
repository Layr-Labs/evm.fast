import InitECandidate.Proofs.BackendStages.BytesData495
import InitECandidate.Proofs.BackendStages.BytePiecesData495
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section495_eq : ByteData.bytes495 = [piece495_0].flatten := by
  rw [piece495_0_eq]
  rfl
#print axioms section495_eq
end InitECandidate.Proofs.BackendStages.BytePieces
