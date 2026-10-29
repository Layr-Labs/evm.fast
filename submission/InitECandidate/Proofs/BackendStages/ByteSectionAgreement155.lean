import InitECandidate.Proofs.BackendStages.BytesData155
import InitECandidate.Proofs.BackendStages.BytePiecesData155
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section155_eq : ByteData.bytes155 = [piece155_0].flatten := by
  rw [piece155_0_eq]
  rfl
#print axioms section155_eq
end InitECandidate.Proofs.BackendStages.BytePieces
