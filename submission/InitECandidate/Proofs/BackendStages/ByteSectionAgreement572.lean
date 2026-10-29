import InitECandidate.Proofs.BackendStages.BytesData572
import InitECandidate.Proofs.BackendStages.BytePiecesData572
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section572_eq : ByteData.bytes572 = [piece572_0].flatten := by
  rw [piece572_0_eq]
  rfl
#print axioms section572_eq
end InitECandidate.Proofs.BackendStages.BytePieces
