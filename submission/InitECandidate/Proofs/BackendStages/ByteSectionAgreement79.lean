import InitECandidate.Proofs.BackendStages.BytesData79
import InitECandidate.Proofs.BackendStages.BytePiecesData79
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section79_eq : ByteData.bytes79 = [piece79_0].flatten := by
  rw [piece79_0_eq]
  rfl
#print axioms section79_eq
end InitECandidate.Proofs.BackendStages.BytePieces
