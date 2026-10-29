import InitECandidate.Proofs.BackendStages.BytePiecesData704
import InitECandidate.Bytes165
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate165_eq : InitECandidate.bytes165 = [piece704_3].flatten := by
  rw [piece704_3_eq]
  rfl
#print axioms candidate165_eq
end InitECandidate.Proofs.BackendStages.BytePieces
