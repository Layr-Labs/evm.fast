import InitECandidate.Proofs.BackendStages.BytesData416
import InitECandidate.Proofs.BackendStages.BytePiecesData416
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section416_eq : ByteData.bytes416 = [piece416_0].flatten := by
  rw [piece416_0_eq]
  rfl
#print axioms section416_eq
end InitECandidate.Proofs.BackendStages.BytePieces
