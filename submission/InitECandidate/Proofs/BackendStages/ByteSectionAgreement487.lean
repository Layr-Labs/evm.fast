import InitECandidate.Proofs.BackendStages.BytesData487
import InitECandidate.Proofs.BackendStages.BytePiecesData487
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section487_eq : ByteData.bytes487 = [piece487_0, piece487_1].flatten := by
  rw [piece487_0_eq, piece487_1_eq]
  rfl
#print axioms section487_eq
end InitECandidate.Proofs.BackendStages.BytePieces
