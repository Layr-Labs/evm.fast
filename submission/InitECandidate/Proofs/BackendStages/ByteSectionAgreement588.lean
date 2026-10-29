import InitECandidate.Proofs.BackendStages.BytesData588
import InitECandidate.Proofs.BackendStages.BytePiecesData588
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section588_eq : ByteData.bytes588 = [piece588_0, piece588_1].flatten := by
  rw [piece588_0_eq, piece588_1_eq]
  rfl
#print axioms section588_eq
end InitECandidate.Proofs.BackendStages.BytePieces
