import InitECandidate.Proofs.BackendStages.BytesData665
import InitECandidate.Proofs.BackendStages.BytePiecesData665
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section665_eq : ByteData.bytes665 = [piece665_0].flatten := by
  rw [piece665_0_eq]
  rfl
#print axioms section665_eq
end InitECandidate.Proofs.BackendStages.BytePieces
