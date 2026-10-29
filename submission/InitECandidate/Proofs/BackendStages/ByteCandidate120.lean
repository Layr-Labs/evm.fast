import InitECandidate.Proofs.BackendStages.BytePiecesData617
import InitECandidate.Proofs.BackendStages.BytePiecesData618
import InitECandidate.Proofs.BackendStages.BytePiecesData619
import InitECandidate.Bytes120
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate120_eq : InitECandidate.bytes120 = [piece617_1, piece618_0, piece619_0].flatten := by
  rw [piece617_1_eq, piece618_0_eq, piece619_0_eq]
  rfl
#print axioms candidate120_eq
end InitECandidate.Proofs.BackendStages.BytePieces
