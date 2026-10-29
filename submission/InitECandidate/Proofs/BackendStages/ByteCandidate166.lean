import InitECandidate.Proofs.BackendStages.BytePiecesData704
import InitECandidate.Bytes166
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate166_eq : InitECandidate.bytes166 = [piece704_4].flatten := by
  rw [piece704_4_eq]
  rfl
#print axioms candidate166_eq
end InitECandidate.Proofs.BackendStages.BytePieces
