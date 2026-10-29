import InitECandidate.Proofs.BackendStages.BytesData504
import InitECandidate.Proofs.BackendStages.BytePiecesData504
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section504_eq : ByteData.bytes504 = [piece504_0].flatten := by
  rw [piece504_0_eq]
  rfl
#print axioms section504_eq
end InitECandidate.Proofs.BackendStages.BytePieces
