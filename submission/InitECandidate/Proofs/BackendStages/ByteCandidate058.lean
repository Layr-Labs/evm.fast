import InitECandidate.Proofs.BackendStages.BytePiecesData302
import InitECandidate.Proofs.BackendStages.BytePiecesData303
import InitECandidate.Proofs.BackendStages.BytePiecesData304
import InitECandidate.Proofs.BackendStages.BytePiecesData305
import InitECandidate.Proofs.BackendStages.BytePiecesData306
import InitECandidate.Bytes058
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate058_eq : InitECandidate.bytes058 = [piece302_1, piece303_0, piece304_0, piece305_0, piece306_0].flatten := by
  rw [piece302_1_eq, piece303_0_eq, piece304_0_eq, piece305_0_eq, piece306_0_eq]
  rfl
#print axioms candidate058_eq
end InitECandidate.Proofs.BackendStages.BytePieces
