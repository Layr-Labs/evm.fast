import InitECandidate.Proofs.BackendStages.BytesData313
import InitECandidate.Proofs.BackendStages.BytePiecesData313
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section313_eq : ByteData.bytes313 = [piece313_0].flatten := by
  rw [piece313_0_eq]
  rfl
#print axioms section313_eq
end InitECandidate.Proofs.BackendStages.BytePieces
