import InitECandidate.Proofs.BackendStages.BytesData384
import InitECandidate.Proofs.BackendStages.BytePiecesData384
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section384_eq : ByteData.bytes384 = [piece384_0, piece384_1].flatten := by
  rw [piece384_0_eq, piece384_1_eq]
  rfl
#print axioms section384_eq
end InitECandidate.Proofs.BackendStages.BytePieces
