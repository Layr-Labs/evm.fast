import InitECandidate.Proofs.BackendStages.BytesData650
import InitECandidate.Proofs.BackendStages.BytePiecesData650
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section650_eq : ByteData.bytes650 = [piece650_0, piece650_1].flatten := by
  rw [piece650_0_eq, piece650_1_eq]
  rfl
#print axioms section650_eq
end InitECandidate.Proofs.BackendStages.BytePieces
