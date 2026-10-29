import InitECandidate.Proofs.BackendStages.BytePiecesData624
import InitECandidate.Proofs.BackendStages.BytePiecesData625
import InitECandidate.Proofs.BackendStages.BytePiecesData626
import InitECandidate.Proofs.BackendStages.BytePiecesData627
import InitECandidate.Bytes127
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate127_eq : InitECandidate.bytes127 = [piece624_1, piece625_0, piece626_0, piece627_0].flatten := by
  rw [piece624_1_eq, piece625_0_eq, piece626_0_eq, piece627_0_eq]
  rfl
#print axioms candidate127_eq
end InitECandidate.Proofs.BackendStages.BytePieces
