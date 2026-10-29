import InitECandidate.Proofs.BackendStages.BytePiecesData690
import InitECandidate.Proofs.BackendStages.BytePiecesData691
import InitECandidate.Bytes154
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate154_eq : InitECandidate.bytes154 = [piece690_1, piece691_0].flatten := by
  rw [piece690_1_eq, piece691_0_eq]
  rfl
#print axioms candidate154_eq
end InitECandidate.Proofs.BackendStages.BytePieces
