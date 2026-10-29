import InitECandidate.Proofs.BackendStages.BytesData117
import InitECandidate.Proofs.BackendStages.BytePiecesData117
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section117_eq : ByteData.bytes117 = [piece117_0].flatten := by
  rw [piece117_0_eq]
  rfl
#print axioms section117_eq
end InitECandidate.Proofs.BackendStages.BytePieces
