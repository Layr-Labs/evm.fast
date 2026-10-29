import InitECandidate.Proofs.BackendStages.BytesData873
import InitECandidate.Proofs.BackendStages.BytePiecesData873
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section873_eq : ByteData.bytes873 = [piece873_0].flatten := by
  rw [piece873_0_eq]
  rfl
#print axioms section873_eq
end InitECandidate.Proofs.BackendStages.BytePieces
