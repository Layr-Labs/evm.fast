import InitECandidate.Proofs.BackendStages.BytePiecesData616
import InitECandidate.Proofs.BackendStages.BytePiecesData617
import InitECandidate.Bytes119
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate119_eq : InitECandidate.bytes119 = [piece616_1, piece617_0].flatten := by
  rw [piece616_1_eq, piece617_0_eq]
  rfl
#print axioms candidate119_eq
end InitECandidate.Proofs.BackendStages.BytePieces
