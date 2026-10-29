import InitECandidate.Proofs.BackendStages.BytesData425
import InitECandidate.Proofs.BackendStages.BytePiecesData425
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section425_eq : ByteData.bytes425 = [piece425_0].flatten := by
  rw [piece425_0_eq]
  rfl
#print axioms section425_eq
end InitECandidate.Proofs.BackendStages.BytePieces
