import InitECandidate.Proofs.BackendStages.BytesData196
import InitECandidate.Proofs.BackendStages.BytePiecesData196
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section196_eq : ByteData.bytes196 = [piece196_0].flatten := by
  rw [piece196_0_eq]
  rfl
#print axioms section196_eq
end InitECandidate.Proofs.BackendStages.BytePieces
