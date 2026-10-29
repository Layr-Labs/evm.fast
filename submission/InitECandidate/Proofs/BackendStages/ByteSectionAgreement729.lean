import InitECandidate.Proofs.BackendStages.BytesData729
import InitECandidate.Proofs.BackendStages.BytePiecesData729
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section729_eq : ByteData.bytes729 = [piece729_0, piece729_1].flatten := by
  rw [piece729_0_eq, piece729_1_eq]
  rfl
#print axioms section729_eq
end InitECandidate.Proofs.BackendStages.BytePieces
