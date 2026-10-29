import InitECandidate.Proofs.BackendStages.BytesData506
import InitECandidate.Proofs.BackendStages.BytePiecesData506
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section506_eq : ByteData.bytes506 = [piece506_0].flatten := by
  rw [piece506_0_eq]
  rfl
#print axioms section506_eq
end InitECandidate.Proofs.BackendStages.BytePieces
