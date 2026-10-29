import InitECandidate.Proofs.BackendStages.BytesData745
import InitECandidate.Proofs.BackendStages.BytePiecesData745
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section745_eq : ByteData.bytes745 = [piece745_0].flatten := by
  rw [piece745_0_eq]
  rfl
#print axioms section745_eq
end InitECandidate.Proofs.BackendStages.BytePieces
