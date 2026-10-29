import InitECandidate.Proofs.BackendStages.BytesData786
import InitECandidate.Proofs.BackendStages.BytePiecesData786
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section786_eq : ByteData.bytes786 = [piece786_0].flatten := by
  rw [piece786_0_eq]
  rfl
#print axioms section786_eq
end InitECandidate.Proofs.BackendStages.BytePieces
