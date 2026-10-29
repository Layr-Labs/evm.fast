import InitECandidate.Proofs.BackendStages.BytePiecesData646
import InitECandidate.Proofs.BackendStages.BytePiecesData647
import InitECandidate.Proofs.BackendStages.BytePiecesData648
import InitECandidate.Proofs.BackendStages.BytePiecesData649
import InitECandidate.Proofs.BackendStages.BytePiecesData650
import InitECandidate.Bytes135
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate135_eq : InitECandidate.bytes135 = [piece646_1, piece647_0, piece648_0, piece649_0, piece650_0].flatten := by
  rw [piece646_1_eq, piece647_0_eq, piece648_0_eq, piece649_0_eq, piece650_0_eq]
  rfl
#print axioms candidate135_eq
end InitECandidate.Proofs.BackendStages.BytePieces
