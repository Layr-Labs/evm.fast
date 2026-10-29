import InitECandidate.Proofs.BackendStages.BytesData612
import InitECandidate.Proofs.BackendStages.BytePiecesData612
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section612_eq : ByteData.bytes612 = [piece612_0].flatten := by
  rw [piece612_0_eq]
  rfl
#print axioms section612_eq
end InitECandidate.Proofs.BackendStages.BytePieces
