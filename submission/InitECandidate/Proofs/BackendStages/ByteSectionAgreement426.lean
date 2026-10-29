import InitECandidate.Proofs.BackendStages.BytesData426
import InitECandidate.Proofs.BackendStages.BytePiecesData426
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section426_eq : ByteData.bytes426 = [piece426_0].flatten := by
  rw [piece426_0_eq]
  rfl
#print axioms section426_eq
end InitECandidate.Proofs.BackendStages.BytePieces
