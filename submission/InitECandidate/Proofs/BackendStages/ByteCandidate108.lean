import InitECandidate.Proofs.BackendStages.BytePiecesData588
import InitECandidate.Proofs.BackendStages.BytePiecesData589
import InitECandidate.Proofs.BackendStages.BytePiecesData590
import InitECandidate.Bytes108
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate108_eq : InitECandidate.bytes108 = [piece588_1, piece589_0, piece590_0].flatten := by
  rw [piece588_1_eq, piece589_0_eq, piece590_0_eq]
  rfl
#print axioms candidate108_eq
end InitECandidate.Proofs.BackendStages.BytePieces
