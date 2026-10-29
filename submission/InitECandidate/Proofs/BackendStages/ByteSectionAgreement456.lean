import InitECandidate.Proofs.BackendStages.BytesData456
import InitECandidate.Proofs.BackendStages.BytePiecesData456
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section456_eq : ByteData.bytes456 = [piece456_0].flatten := by
  rw [piece456_0_eq]
  rfl
#print axioms section456_eq
end InitECandidate.Proofs.BackendStages.BytePieces
