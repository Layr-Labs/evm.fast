import InitECandidate.Proofs.BackendStages.BytesData1
import InitECandidate.Proofs.BackendStages.BytePiecesData1
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section1_eq : ByteData.bytes1 = [piece1_0].flatten := by
  rw [piece1_0_eq]
  rfl
#print axioms section1_eq
end InitECandidate.Proofs.BackendStages.BytePieces
