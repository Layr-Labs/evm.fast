import InitECandidate.Proofs.BackendStages.BytesData643
import InitECandidate.Proofs.BackendStages.BytePiecesData643
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section643_eq : ByteData.bytes643 = [piece643_0].flatten := by
  rw [piece643_0_eq]
  rfl
#print axioms section643_eq
end InitECandidate.Proofs.BackendStages.BytePieces
