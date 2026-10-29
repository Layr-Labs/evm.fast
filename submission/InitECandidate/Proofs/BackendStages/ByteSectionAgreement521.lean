import InitECandidate.Proofs.BackendStages.BytesData521
import InitECandidate.Proofs.BackendStages.BytePiecesData521
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section521_eq : ByteData.bytes521 = [piece521_0].flatten := by
  rw [piece521_0_eq]
  rfl
#print axioms section521_eq
end InitECandidate.Proofs.BackendStages.BytePieces
