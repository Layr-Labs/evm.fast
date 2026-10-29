import InitECandidate.Proofs.BackendStages.BytesData746
import InitECandidate.Proofs.BackendStages.BytePiecesData746
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section746_eq : ByteData.bytes746 = [piece746_0].flatten := by
  rw [piece746_0_eq]
  rfl
#print axioms section746_eq
end InitECandidate.Proofs.BackendStages.BytePieces
