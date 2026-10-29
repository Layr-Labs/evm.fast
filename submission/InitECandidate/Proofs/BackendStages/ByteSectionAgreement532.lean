import InitECandidate.Proofs.BackendStages.BytesData532
import InitECandidate.Proofs.BackendStages.BytePiecesData532
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section532_eq : ByteData.bytes532 = [piece532_0].flatten := by
  rw [piece532_0_eq]
  rfl
#print axioms section532_eq
end InitECandidate.Proofs.BackendStages.BytePieces
