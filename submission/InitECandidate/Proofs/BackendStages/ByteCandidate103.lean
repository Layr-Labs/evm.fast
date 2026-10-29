import InitECandidate.Proofs.BackendStages.BytePiecesData566
import InitECandidate.Proofs.BackendStages.BytePiecesData567
import InitECandidate.Proofs.BackendStages.BytePiecesData568
import InitECandidate.Proofs.BackendStages.BytePiecesData569
import InitECandidate.Bytes103
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate103_eq : InitECandidate.bytes103 = [piece566_1, piece567_0, piece568_0, piece569_0].flatten := by
  rw [piece566_1_eq, piece567_0_eq, piece568_0_eq, piece569_0_eq]
  rfl
#print axioms candidate103_eq
end InitECandidate.Proofs.BackendStages.BytePieces
