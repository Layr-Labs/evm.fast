import InitECandidate.Proofs.BackendStages.BytePiecesData619
import InitECandidate.Proofs.BackendStages.BytePiecesData620
import InitECandidate.Proofs.BackendStages.BytePiecesData621
import InitECandidate.Bytes121
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate121_eq : InitECandidate.bytes121 = [piece619_1, piece620_0, piece621_0].flatten := by
  rw [piece619_1_eq, piece620_0_eq, piece621_0_eq]
  rfl
#print axioms candidate121_eq
end InitECandidate.Proofs.BackendStages.BytePieces
