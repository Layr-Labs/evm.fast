import InitECandidate.Proofs.BackendStages.BytePiecesData704
import InitECandidate.Bytes168
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate168_eq : InitECandidate.bytes168 = [piece704_6].flatten := by
  rw [piece704_6_eq]
  rfl
#print axioms candidate168_eq
end InitECandidate.Proofs.BackendStages.BytePieces
