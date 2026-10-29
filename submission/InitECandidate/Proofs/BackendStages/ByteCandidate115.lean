import InitECandidate.Proofs.BackendStages.BytePiecesData599
import InitECandidate.Proofs.BackendStages.BytePiecesData600
import InitECandidate.Proofs.BackendStages.BytePiecesData601
import InitECandidate.Bytes115
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate115_eq : InitECandidate.bytes115 = [piece599_1, piece600_0, piece601_0].flatten := by
  rw [piece599_1_eq, piece600_0_eq, piece601_0_eq]
  rfl
#print axioms candidate115_eq
end InitECandidate.Proofs.BackendStages.BytePieces
