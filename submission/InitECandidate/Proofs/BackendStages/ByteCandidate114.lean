import InitECandidate.Proofs.BackendStages.BytePiecesData595
import InitECandidate.Proofs.BackendStages.BytePiecesData596
import InitECandidate.Proofs.BackendStages.BytePiecesData597
import InitECandidate.Proofs.BackendStages.BytePiecesData598
import InitECandidate.Proofs.BackendStages.BytePiecesData599
import InitECandidate.Bytes114
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate114_eq : InitECandidate.bytes114 = [piece595_3, piece596_0, piece597_0, piece598_0, piece599_0].flatten := by
  rw [piece595_3_eq, piece596_0_eq, piece597_0_eq, piece598_0_eq, piece599_0_eq]
  rfl
#print axioms candidate114_eq
end InitECandidate.Proofs.BackendStages.BytePieces
