import InitECandidate.Proofs.BackendStages.BytesData818
import InitECandidate.Proofs.BackendStages.BytePiecesData818
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section818_eq : ByteData.bytes818 = [piece818_0, piece818_1].flatten := by
  rw [piece818_0_eq, piece818_1_eq]
  rfl
#print axioms section818_eq
end InitECandidate.Proofs.BackendStages.BytePieces
