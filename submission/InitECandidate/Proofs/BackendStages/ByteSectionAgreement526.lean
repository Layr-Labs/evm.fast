import InitECandidate.Proofs.BackendStages.BytesData526
import InitECandidate.Proofs.BackendStages.BytePiecesData526
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section526_eq : ByteData.bytes526 = [piece526_0].flatten := by
  rw [piece526_0_eq]
  rfl
#print axioms section526_eq
end InitECandidate.Proofs.BackendStages.BytePieces
