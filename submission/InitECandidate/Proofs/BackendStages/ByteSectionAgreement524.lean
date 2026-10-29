import InitECandidate.Proofs.BackendStages.BytesData524
import InitECandidate.Proofs.BackendStages.BytePiecesData524
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section524_eq : ByteData.bytes524 = [piece524_0].flatten := by
  rw [piece524_0_eq]
  rfl
#print axioms section524_eq
end InitECandidate.Proofs.BackendStages.BytePieces
