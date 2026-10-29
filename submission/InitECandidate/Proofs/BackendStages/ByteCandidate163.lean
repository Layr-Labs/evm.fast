import InitECandidate.Proofs.BackendStages.BytePiecesData704
import InitECandidate.Bytes163
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate163_eq : InitECandidate.bytes163 = [piece704_1].flatten := by
  rw [piece704_1_eq]
  rfl
#print axioms candidate163_eq
end InitECandidate.Proofs.BackendStages.BytePieces
