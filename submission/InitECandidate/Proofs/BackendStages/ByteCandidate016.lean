import InitECandidate.Proofs.BackendStages.BytePiecesData154
import InitECandidate.Bytes016
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate016_eq : InitECandidate.bytes016 = [piece154_4].flatten := by
  rw [piece154_4_eq]
  rfl
#print axioms candidate016_eq
end InitECandidate.Proofs.BackendStages.BytePieces
