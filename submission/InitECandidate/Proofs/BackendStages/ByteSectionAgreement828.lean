import InitECandidate.Proofs.BackendStages.BytesData828
import InitECandidate.Proofs.BackendStages.BytePiecesData828
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section828_eq : ByteData.bytes828 = [piece828_0].flatten := by
  rw [piece828_0_eq]
  rfl
#print axioms section828_eq
end InitECandidate.Proofs.BackendStages.BytePieces
