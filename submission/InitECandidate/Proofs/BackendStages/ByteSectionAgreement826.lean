import InitECandidate.Proofs.BackendStages.BytesData826
import InitECandidate.Proofs.BackendStages.BytePiecesData826
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section826_eq : ByteData.bytes826 = [piece826_0].flatten := by
  rw [piece826_0_eq]
  rfl
#print axioms section826_eq
end InitECandidate.Proofs.BackendStages.BytePieces
