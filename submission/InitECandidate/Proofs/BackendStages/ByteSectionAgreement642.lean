import InitECandidate.Proofs.BackendStages.BytesData642
import InitECandidate.Proofs.BackendStages.BytePiecesData642
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section642_eq : ByteData.bytes642 = [piece642_0, piece642_1].flatten := by
  rw [piece642_0_eq, piece642_1_eq]
  rfl
#print axioms section642_eq
end InitECandidate.Proofs.BackendStages.BytePieces
