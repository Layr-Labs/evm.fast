import InitECandidate.Proofs.BackendStages.BytesData700
import InitECandidate.Proofs.BackendStages.BytePiecesData700
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section700_eq : ByteData.bytes700 = [piece700_0, piece700_1, piece700_2].flatten := by
  rw [piece700_0_eq, piece700_1_eq, piece700_2_eq]
  rfl
#print axioms section700_eq
end InitECandidate.Proofs.BackendStages.BytePieces
