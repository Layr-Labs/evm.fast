import InitECandidate.Proofs.BackendStages.BytesData652
import InitECandidate.Proofs.BackendStages.BytePiecesData652
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section652_eq : ByteData.bytes652 = [piece652_0, piece652_1].flatten := by
  rw [piece652_0_eq, piece652_1_eq]
  rfl
#print axioms section652_eq
end InitECandidate.Proofs.BackendStages.BytePieces
