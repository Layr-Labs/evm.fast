import InitECandidate.Proofs.BackendStages.BytesData764
import InitECandidate.Proofs.BackendStages.BytePiecesData764
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section764_eq : ByteData.bytes764 = [piece764_0].flatten := by
  rw [piece764_0_eq]
  rfl
#print axioms section764_eq
end InitECandidate.Proofs.BackendStages.BytePieces
