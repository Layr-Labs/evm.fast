import InitECandidate.Proofs.BackendStages.BytesData179
import InitECandidate.Proofs.BackendStages.BytePiecesData179
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section179_eq : ByteData.bytes179 = [piece179_0].flatten := by
  rw [piece179_0_eq]
  rfl
#print axioms section179_eq
end InitECandidate.Proofs.BackendStages.BytePieces
