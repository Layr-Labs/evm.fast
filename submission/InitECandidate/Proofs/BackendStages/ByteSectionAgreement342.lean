import InitECandidate.Proofs.BackendStages.BytesData342
import InitECandidate.Proofs.BackendStages.BytePiecesData342
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section342_eq : ByteData.bytes342 = [piece342_0].flatten := by
  rw [piece342_0_eq]
  rfl
#print axioms section342_eq
end InitECandidate.Proofs.BackendStages.BytePieces
