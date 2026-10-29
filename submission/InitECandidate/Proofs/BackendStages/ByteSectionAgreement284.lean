import InitECandidate.Proofs.BackendStages.BytesData284
import InitECandidate.Proofs.BackendStages.BytePiecesData284
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section284_eq : ByteData.bytes284 = [piece284_0].flatten := by
  rw [piece284_0_eq]
  rfl
#print axioms section284_eq
end InitECandidate.Proofs.BackendStages.BytePieces
