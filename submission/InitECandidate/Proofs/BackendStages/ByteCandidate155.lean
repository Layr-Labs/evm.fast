import InitECandidate.Proofs.BackendStages.BytePiecesData691
import InitECandidate.Proofs.BackendStages.BytePiecesData692
import InitECandidate.Proofs.BackendStages.BytePiecesData693
import InitECandidate.Bytes155
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate155_eq : InitECandidate.bytes155 = [piece691_1, piece692_0, piece693_0].flatten := by
  rw [piece691_1_eq, piece692_0_eq, piece693_0_eq]
  rfl
#print axioms candidate155_eq
end InitECandidate.Proofs.BackendStages.BytePieces
