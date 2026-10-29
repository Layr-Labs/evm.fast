import InitECandidate.Proofs.BackendStages.BytesData790
import InitECandidate.Proofs.BackendStages.BytePiecesData790
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section790_eq : ByteData.bytes790 = [piece790_0, piece790_1].flatten := by
  rw [piece790_0_eq, piece790_1_eq]
  rfl
#print axioms section790_eq
end InitECandidate.Proofs.BackendStages.BytePieces
