import InitECandidate.Proofs.BackendStages.BytesData639
import InitECandidate.Proofs.BackendStages.BytePiecesData639
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section639_eq : ByteData.bytes639 = [piece639_0].flatten := by
  rw [piece639_0_eq]
  rfl
#print axioms section639_eq
end InitECandidate.Proofs.BackendStages.BytePieces
