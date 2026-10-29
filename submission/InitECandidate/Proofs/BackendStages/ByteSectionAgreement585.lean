import InitECandidate.Proofs.BackendStages.BytesData585
import InitECandidate.Proofs.BackendStages.BytePiecesData585
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section585_eq : ByteData.bytes585 = [piece585_0, piece585_1].flatten := by
  rw [piece585_0_eq, piece585_1_eq]
  rfl
#print axioms section585_eq
end InitECandidate.Proofs.BackendStages.BytePieces
