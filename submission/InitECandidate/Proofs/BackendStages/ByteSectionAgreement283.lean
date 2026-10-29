import InitECandidate.Proofs.BackendStages.BytesData283
import InitECandidate.Proofs.BackendStages.BytePiecesData283
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section283_eq : ByteData.bytes283 = [piece283_0, piece283_1].flatten := by
  rw [piece283_0_eq, piece283_1_eq]
  rfl
#print axioms section283_eq
end InitECandidate.Proofs.BackendStages.BytePieces
