import InitECandidate.Proofs.BackendStages.BytesData631
import InitECandidate.Proofs.BackendStages.BytePiecesData631
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section631_eq : ByteData.bytes631 = [piece631_0].flatten := by
  rw [piece631_0_eq]
  rfl
#print axioms section631_eq
end InitECandidate.Proofs.BackendStages.BytePieces
