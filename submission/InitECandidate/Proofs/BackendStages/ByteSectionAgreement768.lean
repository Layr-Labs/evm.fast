import InitECandidate.Proofs.BackendStages.BytesData768
import InitECandidate.Proofs.BackendStages.BytePiecesData768
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section768_eq : ByteData.bytes768 = [piece768_0].flatten := by
  rw [piece768_0_eq]
  rfl
#print axioms section768_eq
end InitECandidate.Proofs.BackendStages.BytePieces
