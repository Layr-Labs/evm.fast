import InitECandidate.Proofs.BackendStages.BytesData860
import InitECandidate.Proofs.BackendStages.BytePiecesData860
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section860_eq : ByteData.bytes860 = [piece860_0, piece860_1].flatten := by
  rw [piece860_0_eq, piece860_1_eq]
  rfl
#print axioms section860_eq
end InitECandidate.Proofs.BackendStages.BytePieces
