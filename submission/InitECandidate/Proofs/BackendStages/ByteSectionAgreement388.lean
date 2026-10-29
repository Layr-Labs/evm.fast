import InitECandidate.Proofs.BackendStages.BytesData388
import InitECandidate.Proofs.BackendStages.BytePiecesData388
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section388_eq : ByteData.bytes388 = [piece388_0, piece388_1].flatten := by
  rw [piece388_0_eq, piece388_1_eq]
  rfl
#print axioms section388_eq
end InitECandidate.Proofs.BackendStages.BytePieces
