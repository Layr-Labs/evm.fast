import InitECandidate.Proofs.BackendStages.BytePiecesData154
import InitECandidate.Bytes013
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate013_eq : InitECandidate.bytes013 = [piece154_1].flatten := by
  rw [piece154_1_eq]
  rfl
#print axioms candidate013_eq
end InitECandidate.Proofs.BackendStages.BytePieces
