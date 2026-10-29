import InitECandidate.Proofs.BackendStages.BytesData323
import InitECandidate.Proofs.BackendStages.BytePiecesData323
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section323_eq : ByteData.bytes323 = [piece323_0].flatten := by
  rw [piece323_0_eq]
  rfl
#print axioms section323_eq
end InitECandidate.Proofs.BackendStages.BytePieces
