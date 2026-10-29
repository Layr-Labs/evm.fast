import InitECandidate.Proofs.BackendStages.BytesData118
import InitECandidate.Proofs.BackendStages.BytePiecesData118
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section118_eq : ByteData.bytes118 = [piece118_0, piece118_1].flatten := by
  rw [piece118_0_eq, piece118_1_eq]
  rfl
#print axioms section118_eq
end InitECandidate.Proofs.BackendStages.BytePieces
