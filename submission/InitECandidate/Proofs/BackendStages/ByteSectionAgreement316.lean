import InitECandidate.Proofs.BackendStages.BytesData316
import InitECandidate.Proofs.BackendStages.BytePiecesData316
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section316_eq : ByteData.bytes316 = [piece316_0].flatten := by
  rw [piece316_0_eq]
  rfl
#print axioms section316_eq
end InitECandidate.Proofs.BackendStages.BytePieces
