import InitECandidate.Proofs.BackendStages.BytePiecesData601
import InitECandidate.Proofs.BackendStages.BytePiecesData602
import InitECandidate.Proofs.BackendStages.BytePiecesData603
import InitECandidate.Proofs.BackendStages.BytePiecesData604
import InitECandidate.Proofs.BackendStages.BytePiecesData605
import InitECandidate.Proofs.BackendStages.BytePiecesData606
import InitECandidate.Bytes116
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate116_eq : InitECandidate.bytes116 = [piece601_1, piece602_0, piece603_0, piece604_0, piece605_0, piece606_0].flatten := by
  rw [piece601_1_eq, piece602_0_eq, piece603_0_eq, piece604_0_eq, piece605_0_eq, piece606_0_eq]
  rfl
#print axioms candidate116_eq
end InitECandidate.Proofs.BackendStages.BytePieces
