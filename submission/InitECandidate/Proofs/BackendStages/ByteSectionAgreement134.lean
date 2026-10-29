import InitECandidate.Proofs.BackendStages.BytesData134
import InitECandidate.Proofs.BackendStages.BytePiecesData134
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section134_eq : ByteData.bytes134 = [piece134_0, piece134_1].flatten := by
  rw [piece134_0_eq, piece134_1_eq]
  rfl
#print axioms section134_eq
end InitECandidate.Proofs.BackendStages.BytePieces
