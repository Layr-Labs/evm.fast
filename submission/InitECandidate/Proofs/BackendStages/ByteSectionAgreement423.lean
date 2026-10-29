import InitECandidate.Proofs.BackendStages.BytesData423
import InitECandidate.Proofs.BackendStages.BytePiecesData423
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section423_eq : ByteData.bytes423 = [piece423_0, piece423_1].flatten := by
  rw [piece423_0_eq, piece423_1_eq]
  rfl
#print axioms section423_eq
end InitECandidate.Proofs.BackendStages.BytePieces
