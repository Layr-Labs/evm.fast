import InitECandidate.Proofs.BackendStages.BytesData573
import InitECandidate.Proofs.BackendStages.BytePiecesData573
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section573_eq : ByteData.bytes573 = [piece573_0].flatten := by
  rw [piece573_0_eq]
  rfl
#print axioms section573_eq
end InitECandidate.Proofs.BackendStages.BytePieces
