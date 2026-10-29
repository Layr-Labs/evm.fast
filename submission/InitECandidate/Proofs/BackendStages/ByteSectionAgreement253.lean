import InitECandidate.Proofs.BackendStages.BytesData253
import InitECandidate.Proofs.BackendStages.BytePiecesData253
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section253_eq : ByteData.bytes253 = [piece253_0].flatten := by
  rw [piece253_0_eq]
  rfl
#print axioms section253_eq
end InitECandidate.Proofs.BackendStages.BytePieces
