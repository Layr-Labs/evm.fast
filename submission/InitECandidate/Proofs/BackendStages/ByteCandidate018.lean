import InitECandidate.Proofs.BackendStages.BytePiecesData154
import InitECandidate.Bytes018
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate018_eq : InitECandidate.bytes018 = [piece154_6].flatten := by
  rw [piece154_6_eq]
  rfl
#print axioms candidate018_eq
end InitECandidate.Proofs.BackendStages.BytePieces
