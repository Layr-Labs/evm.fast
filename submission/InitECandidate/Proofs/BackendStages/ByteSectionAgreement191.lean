import InitECandidate.Proofs.BackendStages.BytesData191
import InitECandidate.Proofs.BackendStages.BytePiecesData191
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section191_eq : ByteData.bytes191 = [piece191_0].flatten := by
  rw [piece191_0_eq]
  rfl
#print axioms section191_eq
end InitECandidate.Proofs.BackendStages.BytePieces
