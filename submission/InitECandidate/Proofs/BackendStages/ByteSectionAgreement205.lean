import InitECandidate.Proofs.BackendStages.BytesData205
import InitECandidate.Proofs.BackendStages.BytePiecesData205
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section205_eq : ByteData.bytes205 = [piece205_0].flatten := by
  rw [piece205_0_eq]
  rfl
#print axioms section205_eq
end InitECandidate.Proofs.BackendStages.BytePieces
