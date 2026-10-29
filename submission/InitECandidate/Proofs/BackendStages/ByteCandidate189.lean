import InitECandidate.Proofs.BackendStages.BytePiecesData770
import InitECandidate.Proofs.BackendStages.BytePiecesData771
import InitECandidate.Bytes189
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate189_eq : InitECandidate.bytes189 = [piece770_2, piece771_0].flatten := by
  rw [piece770_2_eq, piece771_0_eq]
  rfl
#print axioms candidate189_eq
end InitECandidate.Proofs.BackendStages.BytePieces
