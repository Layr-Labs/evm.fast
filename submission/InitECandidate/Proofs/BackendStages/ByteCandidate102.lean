import InitECandidate.Proofs.BackendStages.BytePiecesData559
import InitECandidate.Proofs.BackendStages.BytePiecesData560
import InitECandidate.Proofs.BackendStages.BytePiecesData561
import InitECandidate.Proofs.BackendStages.BytePiecesData562
import InitECandidate.Proofs.BackendStages.BytePiecesData563
import InitECandidate.Proofs.BackendStages.BytePiecesData564
import InitECandidate.Proofs.BackendStages.BytePiecesData565
import InitECandidate.Proofs.BackendStages.BytePiecesData566
import InitECandidate.Bytes102
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate102_eq : InitECandidate.bytes102 = [piece559_1, piece560_0, piece561_0, piece562_0, piece563_0, piece564_0, piece565_0, piece566_0].flatten := by
  rw [piece559_1_eq, piece560_0_eq, piece561_0_eq, piece562_0_eq, piece563_0_eq, piece564_0_eq, piece565_0_eq, piece566_0_eq]
  rfl
#print axioms candidate102_eq
end InitECandidate.Proofs.BackendStages.BytePieces
