import InitECandidate.Proofs.BackendStages.BytesData411
import InitECandidate.Proofs.BackendStages.BytePiecesData411
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section411_eq : ByteData.bytes411 = [piece411_0].flatten := by
  rw [piece411_0_eq]
  rfl
#print axioms section411_eq
end InitECandidate.Proofs.BackendStages.BytePieces
