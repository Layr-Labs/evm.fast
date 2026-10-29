import InitECandidate.Proofs.BackendStages.BytesData855
import InitECandidate.Proofs.BackendStages.BytePiecesData855
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section855_eq : ByteData.bytes855 = [piece855_0].flatten := by
  rw [piece855_0_eq]
  rfl
#print axioms section855_eq
end InitECandidate.Proofs.BackendStages.BytePieces
