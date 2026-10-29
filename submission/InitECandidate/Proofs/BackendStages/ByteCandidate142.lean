import InitECandidate.Proofs.BackendStages.BytePiecesData657
import InitECandidate.Proofs.BackendStages.BytePiecesData658
import InitECandidate.Proofs.BackendStages.BytePiecesData659
import InitECandidate.Proofs.BackendStages.BytePiecesData660
import InitECandidate.Proofs.BackendStages.BytePiecesData661
import InitECandidate.Bytes142
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate142_eq : InitECandidate.bytes142 = [piece657_1, piece658_0, piece659_0, piece660_0, piece661_0].flatten := by
  rw [piece657_1_eq, piece658_0_eq, piece659_0_eq, piece660_0_eq, piece661_0_eq]
  rfl
#print axioms candidate142_eq
end InitECandidate.Proofs.BackendStages.BytePieces
