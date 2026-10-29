import InitECandidate.Proofs.BackendStages.BytesData187
import InitECandidate.Proofs.BackendStages.BytePiecesData187
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section187_eq : ByteData.bytes187 = [piece187_0].flatten := by
  rw [piece187_0_eq]
  rfl
#print axioms section187_eq
end InitECandidate.Proofs.BackendStages.BytePieces
