import InitECandidate.Proofs.BackendStages.BytesData67
import InitECandidate.Proofs.BackendStages.BytePiecesData67
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section67_eq : ByteData.bytes67 = [piece67_0].flatten := by
  rw [piece67_0_eq]
  rfl
#print axioms section67_eq
end InitECandidate.Proofs.BackendStages.BytePieces
