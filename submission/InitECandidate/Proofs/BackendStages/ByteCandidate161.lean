import InitECandidate.Proofs.BackendStages.BytePiecesData700
import InitECandidate.Bytes161
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate161_eq : InitECandidate.bytes161 = [piece700_1].flatten := by
  rw [piece700_1_eq]
  rfl
#print axioms candidate161_eq
end InitECandidate.Proofs.BackendStages.BytePieces
