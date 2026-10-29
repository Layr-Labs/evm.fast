import InitECandidate.Proofs.BackendStages.BytesData230
import InitECandidate.Proofs.BackendStages.BytePiecesData230
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section230_eq : ByteData.bytes230 = [piece230_0].flatten := by
  rw [piece230_0_eq]
  rfl
#print axioms section230_eq
end InitECandidate.Proofs.BackendStages.BytePieces
