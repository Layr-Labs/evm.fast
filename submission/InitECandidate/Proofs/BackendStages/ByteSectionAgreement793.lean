import InitECandidate.Proofs.BackendStages.BytesData793
import InitECandidate.Proofs.BackendStages.BytePiecesData793
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section793_eq : ByteData.bytes793 = [piece793_0, piece793_1].flatten := by
  rw [piece793_0_eq, piece793_1_eq]
  rfl
#print axioms section793_eq
end InitECandidate.Proofs.BackendStages.BytePieces
