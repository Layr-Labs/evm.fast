import InitECandidate.Proofs.BackendStages.BytesData730
import InitECandidate.Proofs.BackendStages.BytePiecesData730
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section730_eq : ByteData.bytes730 = [piece730_0].flatten := by
  rw [piece730_0_eq]
  rfl
#print axioms section730_eq
end InitECandidate.Proofs.BackendStages.BytePieces
