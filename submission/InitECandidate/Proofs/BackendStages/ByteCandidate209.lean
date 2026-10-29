import InitECandidate.Proofs.BackendStages.BytePiecesData801
import InitECandidate.Proofs.BackendStages.BytePiecesData802
import InitECandidate.Proofs.BackendStages.BytePiecesData803
import InitECandidate.Bytes209
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate209_eq : InitECandidate.bytes209 = [piece801_2, piece802_0, piece803_0].flatten := by
  rw [piece801_2_eq, piece802_0_eq, piece803_0_eq]
  rfl
#print axioms candidate209_eq
end InitECandidate.Proofs.BackendStages.BytePieces
