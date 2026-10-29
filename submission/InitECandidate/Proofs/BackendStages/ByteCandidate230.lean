import InitECandidate.Proofs.BackendStages.BytePiecesData860
import InitECandidate.Proofs.BackendStages.BytePiecesData861
import InitECandidate.Proofs.BackendStages.BytePiecesData862
import InitECandidate.Bytes230
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate230_eq : InitECandidate.bytes230 = [piece860_1, piece861_0, piece862_0].flatten := by
  rw [piece860_1_eq, piece861_0_eq, piece862_0_eq]
  rfl
#print axioms candidate230_eq
end InitECandidate.Proofs.BackendStages.BytePieces
