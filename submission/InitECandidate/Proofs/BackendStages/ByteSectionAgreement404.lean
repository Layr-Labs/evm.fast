import InitECandidate.Proofs.BackendStages.BytesData404
import InitECandidate.Proofs.BackendStages.BytePiecesData404
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section404_eq : ByteData.bytes404 = [piece404_0].flatten := by
  rw [piece404_0_eq]
  rfl
#print axioms section404_eq
end InitECandidate.Proofs.BackendStages.BytePieces
