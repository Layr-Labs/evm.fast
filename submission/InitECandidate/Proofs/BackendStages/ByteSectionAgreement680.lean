import InitECandidate.Proofs.BackendStages.BytesData680
import InitECandidate.Proofs.BackendStages.BytePiecesData680
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section680_eq : ByteData.bytes680 = [piece680_0].flatten := by
  rw [piece680_0_eq]
  rfl
#print axioms section680_eq
end InitECandidate.Proofs.BackendStages.BytePieces
