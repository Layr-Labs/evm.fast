import InitECandidate.Proofs.BackendStages.BytesData854
import InitECandidate.Proofs.BackendStages.BytePiecesData854
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section854_eq : ByteData.bytes854 = [piece854_0, piece854_1].flatten := by
  rw [piece854_0_eq, piece854_1_eq]
  rfl
#print axioms section854_eq
end InitECandidate.Proofs.BackendStages.BytePieces
