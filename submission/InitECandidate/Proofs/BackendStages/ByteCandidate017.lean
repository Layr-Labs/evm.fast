import InitECandidate.Proofs.BackendStages.BytePiecesData154
import InitECandidate.Bytes017
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate017_eq : InitECandidate.bytes017 = [piece154_5].flatten := by
  rw [piece154_5_eq]
  rfl
#print axioms candidate017_eq
end InitECandidate.Proofs.BackendStages.BytePieces
