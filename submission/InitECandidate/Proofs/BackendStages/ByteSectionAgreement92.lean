import InitECandidate.Proofs.BackendStages.BytesData92
import InitECandidate.Proofs.BackendStages.BytePiecesData92
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section92_eq : ByteData.bytes92 = [piece92_0].flatten := by
  rw [piece92_0_eq]
  rfl
#print axioms section92_eq
end InitECandidate.Proofs.BackendStages.BytePieces
