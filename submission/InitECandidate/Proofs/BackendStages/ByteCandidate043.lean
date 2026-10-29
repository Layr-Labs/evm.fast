import InitECandidate.Proofs.BackendStages.BytePiecesData240
import InitECandidate.Proofs.BackendStages.BytePiecesData241
import InitECandidate.Proofs.BackendStages.BytePiecesData242
import InitECandidate.Proofs.BackendStages.BytePiecesData243
import InitECandidate.Proofs.BackendStages.BytePiecesData244
import InitECandidate.Proofs.BackendStages.BytePiecesData245
import InitECandidate.Proofs.BackendStages.BytePiecesData246
import InitECandidate.Proofs.BackendStages.BytePiecesData247
import InitECandidate.Proofs.BackendStages.BytePiecesData248
import InitECandidate.Bytes043
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate043_eq : InitECandidate.bytes043 = [piece240_1, piece241_0, piece242_0, piece243_0, piece244_0, piece245_0, piece246_0, piece247_0, piece248_0].flatten := by
  rw [piece240_1_eq, piece241_0_eq, piece242_0_eq, piece243_0_eq, piece244_0_eq, piece245_0_eq, piece246_0_eq, piece247_0_eq, piece248_0_eq]
  rfl
#print axioms candidate043_eq
end InitECandidate.Proofs.BackendStages.BytePieces
