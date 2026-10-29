import InitECandidate.Proofs.BackendStages.BytesData200
import InitECandidate.Proofs.BackendStages.BytePiecesData200
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section200_eq : ByteData.bytes200 = [piece200_0, piece200_1].flatten := by
  rw [piece200_0_eq, piece200_1_eq]
  rfl
#print axioms section200_eq
end InitECandidate.Proofs.BackendStages.BytePieces
