import InitECandidate.Proofs.BackendStages.BytesData142
import InitECandidate.Proofs.BackendStages.BytePiecesData142
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section142_eq : ByteData.bytes142 = [piece142_0, piece142_1].flatten := by
  rw [piece142_0_eq, piece142_1_eq]
  rfl
#print axioms section142_eq
end InitECandidate.Proofs.BackendStages.BytePieces
