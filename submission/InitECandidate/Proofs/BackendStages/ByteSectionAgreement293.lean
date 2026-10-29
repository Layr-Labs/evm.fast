import InitECandidate.Proofs.BackendStages.BytesData293
import InitECandidate.Proofs.BackendStages.BytePiecesData293
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section293_eq : ByteData.bytes293 = [piece293_0].flatten := by
  rw [piece293_0_eq]
  rfl
#print axioms section293_eq
end InitECandidate.Proofs.BackendStages.BytePieces
