import InitECandidate.Proofs.BackendStages.BytesData713
import InitECandidate.Proofs.BackendStages.BytePiecesData713
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section713_eq : ByteData.bytes713 = [piece713_0].flatten := by
  rw [piece713_0_eq]
  rfl
#print axioms section713_eq
end InitECandidate.Proofs.BackendStages.BytePieces
