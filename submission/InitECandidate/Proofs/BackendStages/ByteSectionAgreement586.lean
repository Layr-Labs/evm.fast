import InitECandidate.Proofs.BackendStages.BytesData586
import InitECandidate.Proofs.BackendStages.BytePiecesData586
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section586_eq : ByteData.bytes586 = [piece586_0].flatten := by
  rw [piece586_0_eq]
  rfl
#print axioms section586_eq
end InitECandidate.Proofs.BackendStages.BytePieces
