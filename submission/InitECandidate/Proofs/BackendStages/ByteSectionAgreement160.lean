import InitECandidate.Proofs.BackendStages.BytesData160
import InitECandidate.Proofs.BackendStages.BytePiecesData160
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section160_eq : ByteData.bytes160 = [piece160_0].flatten := by
  rw [piece160_0_eq]
  rfl
#print axioms section160_eq
end InitECandidate.Proofs.BackendStages.BytePieces
