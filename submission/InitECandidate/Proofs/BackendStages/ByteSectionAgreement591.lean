import InitECandidate.Proofs.BackendStages.BytesData591
import InitECandidate.Proofs.BackendStages.BytePiecesData591
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section591_eq : ByteData.bytes591 = [piece591_0].flatten := by
  rw [piece591_0_eq]
  rfl
#print axioms section591_eq
end InitECandidate.Proofs.BackendStages.BytePieces
