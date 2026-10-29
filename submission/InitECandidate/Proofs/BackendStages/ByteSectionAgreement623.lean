import InitECandidate.Proofs.BackendStages.BytesData623
import InitECandidate.Proofs.BackendStages.BytePiecesData623
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section623_eq : ByteData.bytes623 = [piece623_0, piece623_1, piece623_2].flatten := by
  rw [piece623_0_eq, piece623_1_eq, piece623_2_eq]
  rfl
#print axioms section623_eq
end InitECandidate.Proofs.BackendStages.BytePieces
