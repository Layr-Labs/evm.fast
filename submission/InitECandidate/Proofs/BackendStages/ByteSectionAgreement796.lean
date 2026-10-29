import InitECandidate.Proofs.BackendStages.BytesData796
import InitECandidate.Proofs.BackendStages.BytePiecesData796
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section796_eq : ByteData.bytes796 = [piece796_0, piece796_1, piece796_2].flatten := by
  rw [piece796_0_eq, piece796_1_eq, piece796_2_eq]
  rfl
#print axioms section796_eq
end InitECandidate.Proofs.BackendStages.BytePieces
