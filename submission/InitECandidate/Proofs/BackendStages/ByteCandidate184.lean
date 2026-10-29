import InitECandidate.Proofs.BackendStages.BytePiecesData754
import InitECandidate.Proofs.BackendStages.BytePiecesData755
import InitECandidate.Proofs.BackendStages.BytePiecesData756
import InitECandidate.Proofs.BackendStages.BytePiecesData757
import InitECandidate.Proofs.BackendStages.BytePiecesData758
import InitECandidate.Bytes184
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate184_eq : InitECandidate.bytes184 = [piece754_1, piece755_0, piece756_0, piece757_0, piece758_0].flatten := by
  rw [piece754_1_eq, piece755_0_eq, piece756_0_eq, piece757_0_eq, piece758_0_eq]
  rfl
#print axioms candidate184_eq
end InitECandidate.Proofs.BackendStages.BytePieces
