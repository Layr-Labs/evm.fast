import InitECandidate.Proofs.BackendStages.BytePiecesData695
import InitECandidate.Proofs.BackendStages.BytePiecesData696
import InitECandidate.Bytes158
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate158_eq : InitECandidate.bytes158 = [piece695_1, piece696_0].flatten := by
  rw [piece695_1_eq, piece696_0_eq]
  rfl
#print axioms candidate158_eq
end InitECandidate.Proofs.BackendStages.BytePieces
