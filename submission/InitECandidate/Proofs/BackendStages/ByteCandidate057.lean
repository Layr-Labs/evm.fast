import InitECandidate.Proofs.BackendStages.BytePiecesData298
import InitECandidate.Proofs.BackendStages.BytePiecesData299
import InitECandidate.Proofs.BackendStages.BytePiecesData300
import InitECandidate.Proofs.BackendStages.BytePiecesData301
import InitECandidate.Proofs.BackendStages.BytePiecesData302
import InitECandidate.Bytes057
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate057_eq : InitECandidate.bytes057 = [piece298_1, piece299_0, piece300_0, piece301_0, piece302_0].flatten := by
  rw [piece298_1_eq, piece299_0_eq, piece300_0_eq, piece301_0_eq, piece302_0_eq]
  rfl
#print axioms candidate057_eq
end InitECandidate.Proofs.BackendStages.BytePieces
