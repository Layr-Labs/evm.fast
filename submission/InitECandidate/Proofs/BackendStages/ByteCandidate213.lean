import InitECandidate.Proofs.BackendStages.BytePiecesData811
import InitECandidate.Proofs.BackendStages.BytePiecesData812
import InitECandidate.Proofs.BackendStages.BytePiecesData813
import InitECandidate.Bytes213
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate213_eq : InitECandidate.bytes213 = [piece811_1, piece812_0, piece813_0].flatten := by
  rw [piece811_1_eq, piece812_0_eq, piece813_0_eq]
  rfl
#print axioms candidate213_eq
end InitECandidate.Proofs.BackendStages.BytePieces
