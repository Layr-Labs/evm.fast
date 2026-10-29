import InitECandidate.Proofs.BackendStages.BytesData113
import InitECandidate.Proofs.BackendStages.BytePiecesData113
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section113_eq : ByteData.bytes113 = [piece113_0].flatten := by
  rw [piece113_0_eq]
  rfl
#print axioms section113_eq
end InitECandidate.Proofs.BackendStages.BytePieces
