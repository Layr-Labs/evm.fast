import InitECandidate.Proofs.BackendStages.BytePiecesData697
import InitECandidate.Proofs.BackendStages.BytePiecesData698
import InitECandidate.Proofs.BackendStages.BytePiecesData699
import InitECandidate.Proofs.BackendStages.BytePiecesData700
import InitECandidate.Bytes160
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate160_eq : InitECandidate.bytes160 = [piece697_1, piece698_0, piece699_0, piece700_0].flatten := by
  rw [piece697_1_eq, piece698_0_eq, piece699_0_eq, piece700_0_eq]
  rfl
#print axioms candidate160_eq
end InitECandidate.Proofs.BackendStages.BytePieces
