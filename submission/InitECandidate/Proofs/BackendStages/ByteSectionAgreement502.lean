import InitECandidate.Proofs.BackendStages.BytesData502
import InitECandidate.Proofs.BackendStages.BytePiecesData502
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section502_eq : ByteData.bytes502 = [piece502_0].flatten := by
  rw [piece502_0_eq]
  rfl
#print axioms section502_eq
end InitECandidate.Proofs.BackendStages.BytePieces
