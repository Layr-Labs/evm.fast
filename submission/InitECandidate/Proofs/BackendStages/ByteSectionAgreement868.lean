import InitECandidate.Proofs.BackendStages.BytesData868
import InitECandidate.Proofs.BackendStages.BytePiecesData868
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section868_eq : ByteData.bytes868 = [piece868_0, piece868_1].flatten := by
  rw [piece868_0_eq, piece868_1_eq]
  rfl
#print axioms section868_eq
end InitECandidate.Proofs.BackendStages.BytePieces
