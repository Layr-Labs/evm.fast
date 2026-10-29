import InitECandidate.Proofs.BackendStages.BytesData433
import InitECandidate.Proofs.BackendStages.BytePiecesData433
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section433_eq : ByteData.bytes433 = [piece433_0].flatten := by
  rw [piece433_0_eq]
  rfl
#print axioms section433_eq
end InitECandidate.Proofs.BackendStages.BytePieces
