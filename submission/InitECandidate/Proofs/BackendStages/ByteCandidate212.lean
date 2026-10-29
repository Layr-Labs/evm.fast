import InitECandidate.Proofs.BackendStages.BytePiecesData808
import InitECandidate.Proofs.BackendStages.BytePiecesData809
import InitECandidate.Proofs.BackendStages.BytePiecesData810
import InitECandidate.Proofs.BackendStages.BytePiecesData811
import InitECandidate.Bytes212
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate212_eq : InitECandidate.bytes212 = [piece808_1, piece809_0, piece810_0, piece811_0].flatten := by
  rw [piece808_1_eq, piece809_0_eq, piece810_0_eq, piece811_0_eq]
  rfl
#print axioms candidate212_eq
end InitECandidate.Proofs.BackendStages.BytePieces
