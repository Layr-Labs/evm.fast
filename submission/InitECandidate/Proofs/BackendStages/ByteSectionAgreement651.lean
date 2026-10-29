import InitECandidate.Proofs.BackendStages.BytesData651
import InitECandidate.Proofs.BackendStages.BytePiecesData651
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section651_eq : ByteData.bytes651 = [piece651_0, piece651_1, piece651_2].flatten := by
  rw [piece651_0_eq, piece651_1_eq, piece651_2_eq]
  rfl
#print axioms section651_eq
end InitECandidate.Proofs.BackendStages.BytePieces
