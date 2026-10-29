import InitECandidate.Proofs.BackendStages.BytesData375
import InitECandidate.Proofs.BackendStages.BytePiecesData375
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section375_eq : ByteData.bytes375 = [piece375_0].flatten := by
  rw [piece375_0_eq]
  rfl
#print axioms section375_eq
end InitECandidate.Proofs.BackendStages.BytePieces
