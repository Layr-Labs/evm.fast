import InitECandidate.Proofs.BackendStages.BytesData111
import InitECandidate.Proofs.BackendStages.BytePiecesData111
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section111_eq : ByteData.bytes111 = [piece111_0].flatten := by
  rw [piece111_0_eq]
  rfl
#print axioms section111_eq
end InitECandidate.Proofs.BackendStages.BytePieces
