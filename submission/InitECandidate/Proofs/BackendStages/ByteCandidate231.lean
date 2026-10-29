import InitECandidate.Proofs.BackendStages.BytePiecesData862
import InitECandidate.Proofs.BackendStages.BytePiecesData863
import InitECandidate.Bytes231
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate231_eq : InitECandidate.bytes231 = [piece862_1, piece863_0].flatten := by
  rw [piece862_1_eq, piece863_0_eq]
  rfl
#print axioms candidate231_eq
end InitECandidate.Proofs.BackendStages.BytePieces
