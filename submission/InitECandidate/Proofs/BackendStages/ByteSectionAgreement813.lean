import InitECandidate.Proofs.BackendStages.BytesData813
import InitECandidate.Proofs.BackendStages.BytePiecesData813
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section813_eq : ByteData.bytes813 = [piece813_0, piece813_1].flatten := by
  rw [piece813_0_eq, piece813_1_eq]
  rfl
#print axioms section813_eq
end InitECandidate.Proofs.BackendStages.BytePieces
