import InitECandidate.Proofs.BackendStages.BytesData376
import InitECandidate.Proofs.BackendStages.BytePiecesData376
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section376_eq : ByteData.bytes376 = [piece376_0].flatten := by
  rw [piece376_0_eq]
  rfl
#print axioms section376_eq
end InitECandidate.Proofs.BackendStages.BytePieces
