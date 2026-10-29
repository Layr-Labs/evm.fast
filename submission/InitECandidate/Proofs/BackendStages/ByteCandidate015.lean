import InitECandidate.Proofs.BackendStages.BytePiecesData154
import InitECandidate.Bytes015
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate015_eq : InitECandidate.bytes015 = [piece154_3].flatten := by
  rw [piece154_3_eq]
  rfl
#print axioms candidate015_eq
end InitECandidate.Proofs.BackendStages.BytePieces
