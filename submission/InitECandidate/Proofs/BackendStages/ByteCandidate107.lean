import InitECandidate.Proofs.BackendStages.BytePiecesData585
import InitECandidate.Proofs.BackendStages.BytePiecesData586
import InitECandidate.Proofs.BackendStages.BytePiecesData587
import InitECandidate.Proofs.BackendStages.BytePiecesData588
import InitECandidate.Bytes107
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate107_eq : InitECandidate.bytes107 = [piece585_1, piece586_0, piece587_0, piece588_0].flatten := by
  rw [piece585_1_eq, piece586_0_eq, piece587_0_eq, piece588_0_eq]
  rfl
#print axioms candidate107_eq
end InitECandidate.Proofs.BackendStages.BytePieces
