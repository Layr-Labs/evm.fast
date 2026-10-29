import InitECandidate.Proofs.BackendStages.BytesData864
import InitECandidate.Proofs.BackendStages.BytePiecesData864
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section864_eq : ByteData.bytes864 = [piece864_0].flatten := by
  rw [piece864_0_eq]
  rfl
#print axioms section864_eq
end InitECandidate.Proofs.BackendStages.BytePieces
