import InitECandidate.Proofs.BackendStages.BytesData531
import InitECandidate.Proofs.BackendStages.BytePiecesData531
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section531_eq : ByteData.bytes531 = [piece531_0].flatten := by
  rw [piece531_0_eq]
  rfl
#print axioms section531_eq
end InitECandidate.Proofs.BackendStages.BytePieces
