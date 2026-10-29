import InitECandidate.Proofs.BackendStages.BytesData239
import InitECandidate.Proofs.BackendStages.BytePiecesData239
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section239_eq : ByteData.bytes239 = [piece239_0].flatten := by
  rw [piece239_0_eq]
  rfl
#print axioms section239_eq
end InitECandidate.Proofs.BackendStages.BytePieces
