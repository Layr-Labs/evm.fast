import InitECandidate.Proofs.BackendStages.BytesData202
import InitECandidate.Proofs.BackendStages.BytePiecesData202
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section202_eq : ByteData.bytes202 = [piece202_0].flatten := by
  rw [piece202_0_eq]
  rfl
#print axioms section202_eq
end InitECandidate.Proofs.BackendStages.BytePieces
