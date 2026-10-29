import InitECandidate.Proofs.BackendStages.BytePiecesData623
import InitECandidate.Proofs.BackendStages.BytePiecesData624
import InitECandidate.Bytes126
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate126_eq : InitECandidate.bytes126 = [piece623_2, piece624_0].flatten := by
  rw [piece623_2_eq, piece624_0_eq]
  rfl
#print axioms candidate126_eq
end InitECandidate.Proofs.BackendStages.BytePieces
