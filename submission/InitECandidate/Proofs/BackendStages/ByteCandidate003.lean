import InitECandidate.Proofs.BackendStages.BytePiecesData118
import InitECandidate.Proofs.BackendStages.BytePiecesData119
import InitECandidate.Proofs.BackendStages.BytePiecesData120
import InitECandidate.Proofs.BackendStages.BytePiecesData121
import InitECandidate.Bytes003
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate003_eq : InitECandidate.bytes003 = [piece118_1, piece119_0, piece120_0, piece121_0].flatten := by
  rw [piece118_1_eq, piece119_0_eq, piece120_0_eq, piece121_0_eq]
  rfl
#print axioms candidate003_eq
end InitECandidate.Proofs.BackendStages.BytePieces
