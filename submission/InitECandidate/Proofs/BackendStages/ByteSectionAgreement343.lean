import InitECandidate.Proofs.BackendStages.BytesData343
import InitECandidate.Proofs.BackendStages.BytePiecesData343
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section343_eq : ByteData.bytes343 = [piece343_0].flatten := by
  rw [piece343_0_eq]
  rfl
#print axioms section343_eq
end InitECandidate.Proofs.BackendStages.BytePieces
