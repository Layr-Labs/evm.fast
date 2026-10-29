import InitECandidate.Proofs.BackendStages.BytePiecesData704
import InitECandidate.Bytes170
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate170_eq : InitECandidate.bytes170 = [piece704_8].flatten := by
  rw [piece704_8_eq]
  rfl
#print axioms candidate170_eq
end InitECandidate.Proofs.BackendStages.BytePieces
