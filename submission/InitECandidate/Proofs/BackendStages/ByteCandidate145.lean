import InitECandidate.Proofs.BackendStages.BytePiecesData661
import InitECandidate.Proofs.BackendStages.BytePiecesData662
import InitECandidate.Proofs.BackendStages.BytePiecesData663
import InitECandidate.Proofs.BackendStages.BytePiecesData664
import InitECandidate.Proofs.BackendStages.BytePiecesData665
import InitECandidate.Proofs.BackendStages.BytePiecesData666
import InitECandidate.Proofs.BackendStages.BytePiecesData667
import InitECandidate.Bytes145
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate145_eq : InitECandidate.bytes145 = [piece661_3, piece662_0, piece663_0, piece664_0, piece665_0, piece666_0, piece667_0].flatten := by
  rw [piece661_3_eq, piece662_0_eq, piece663_0_eq, piece664_0_eq, piece665_0_eq, piece666_0_eq, piece667_0_eq]
  rfl
#print axioms candidate145_eq
end InitECandidate.Proofs.BackendStages.BytePieces
