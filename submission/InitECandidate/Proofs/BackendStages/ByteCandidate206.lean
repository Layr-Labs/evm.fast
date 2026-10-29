import InitECandidate.Proofs.BackendStages.BytePiecesData798
import InitECandidate.Proofs.BackendStages.BytePiecesData799
import InitECandidate.Proofs.BackendStages.BytePiecesData800
import InitECandidate.Bytes206
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate206_eq : InitECandidate.bytes206 = [piece798_1, piece799_0, piece800_0].flatten := by
  rw [piece798_1_eq, piece799_0_eq, piece800_0_eq]
  rfl
#print axioms candidate206_eq
end InitECandidate.Proofs.BackendStages.BytePieces
