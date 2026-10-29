import InitECandidate.Proofs.BackendStages.BytesData121
import InitECandidate.Proofs.BackendStages.BytePiecesData121
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section121_eq : ByteData.bytes121 = [piece121_0, piece121_1].flatten := by
  rw [piece121_0_eq, piece121_1_eq]
  rfl
#print axioms section121_eq
end InitECandidate.Proofs.BackendStages.BytePieces
