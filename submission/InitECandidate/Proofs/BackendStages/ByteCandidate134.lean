import InitECandidate.Proofs.BackendStages.BytePiecesData645
import InitECandidate.Proofs.BackendStages.BytePiecesData646
import InitECandidate.Bytes134
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate134_eq : InitECandidate.bytes134 = [piece645_2, piece646_0].flatten := by
  rw [piece645_2_eq, piece646_0_eq]
  rfl
#print axioms candidate134_eq
end InitECandidate.Proofs.BackendStages.BytePieces
