import InitECandidate.Proofs.BackendStages.BytesData710
import InitECandidate.Proofs.BackendStages.BytePiecesData710
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section710_eq : ByteData.bytes710 = [piece710_0].flatten := by
  rw [piece710_0_eq]
  rfl
#print axioms section710_eq
end InitECandidate.Proofs.BackendStages.BytePieces
