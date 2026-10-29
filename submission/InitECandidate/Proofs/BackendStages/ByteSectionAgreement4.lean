import InitECandidate.Proofs.BackendStages.BytesData4
import InitECandidate.Proofs.BackendStages.BytePiecesData4
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section4_eq : ByteData.bytes4 = [piece4_0].flatten := by
  rw [piece4_0_eq]
  rfl
#print axioms section4_eq
end InitECandidate.Proofs.BackendStages.BytePieces
