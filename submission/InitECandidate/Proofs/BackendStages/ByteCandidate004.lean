import InitECandidate.Proofs.BackendStages.BytePiecesData121
import InitECandidate.Proofs.BackendStages.BytePiecesData122
import InitECandidate.Proofs.BackendStages.BytePiecesData123
import InitECandidate.Proofs.BackendStages.BytePiecesData124
import InitECandidate.Proofs.BackendStages.BytePiecesData125
import InitECandidate.Proofs.BackendStages.BytePiecesData126
import InitECandidate.Proofs.BackendStages.BytePiecesData127
import InitECandidate.Bytes004
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate004_eq : InitECandidate.bytes004 = [piece121_1, piece122_0, piece123_0, piece124_0, piece125_0, piece126_0, piece127_0].flatten := by
  rw [piece121_1_eq, piece122_0_eq, piece123_0_eq, piece124_0_eq, piece125_0_eq, piece126_0_eq, piece127_0_eq]
  rfl
#print axioms candidate004_eq
end InitECandidate.Proofs.BackendStages.BytePieces
