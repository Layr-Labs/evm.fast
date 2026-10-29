import InitECandidate.Proofs.BackendStages.BytesData334
import InitECandidate.Proofs.BackendStages.BytePiecesData334
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section334_eq : ByteData.bytes334 = [piece334_0].flatten := by
  rw [piece334_0_eq]
  rfl
#print axioms section334_eq
end InitECandidate.Proofs.BackendStages.BytePieces
