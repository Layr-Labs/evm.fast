import InitECandidate.Proofs.BackendStages.BytesData194
import InitECandidate.Proofs.BackendStages.BytePiecesData194
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section194_eq : ByteData.bytes194 = [piece194_0].flatten := by
  rw [piece194_0_eq]
  rfl
#print axioms section194_eq
end InitECandidate.Proofs.BackendStages.BytePieces
