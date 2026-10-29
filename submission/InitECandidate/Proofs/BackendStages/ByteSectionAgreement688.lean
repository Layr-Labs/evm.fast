import InitECandidate.Proofs.BackendStages.BytesData688
import InitECandidate.Proofs.BackendStages.BytePiecesData688
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section688_eq : ByteData.bytes688 = [piece688_0].flatten := by
  rw [piece688_0_eq]
  rfl
#print axioms section688_eq
end InitECandidate.Proofs.BackendStages.BytePieces
