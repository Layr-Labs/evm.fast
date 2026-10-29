import InitECandidate.Proofs.BackendStages.BytePiecesData642
import InitECandidate.Proofs.BackendStages.BytePiecesData643
import InitECandidate.Proofs.BackendStages.BytePiecesData644
import InitECandidate.Proofs.BackendStages.BytePiecesData645
import InitECandidate.Bytes132
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate132_eq : InitECandidate.bytes132 = [piece642_1, piece643_0, piece644_0, piece645_0].flatten := by
  rw [piece642_1_eq, piece643_0_eq, piece644_0_eq, piece645_0_eq]
  rfl
#print axioms candidate132_eq
end InitECandidate.Proofs.BackendStages.BytePieces
