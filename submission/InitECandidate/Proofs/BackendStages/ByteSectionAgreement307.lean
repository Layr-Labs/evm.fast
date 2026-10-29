import InitECandidate.Proofs.BackendStages.BytesData307
import InitECandidate.Proofs.BackendStages.BytePiecesData307
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section307_eq : ByteData.bytes307 = [piece307_0].flatten := by
  rw [piece307_0_eq]
  rfl
#print axioms section307_eq
end InitECandidate.Proofs.BackendStages.BytePieces
