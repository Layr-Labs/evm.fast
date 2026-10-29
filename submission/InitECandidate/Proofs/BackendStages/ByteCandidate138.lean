import InitECandidate.Proofs.BackendStages.BytePiecesData651
import InitECandidate.Proofs.BackendStages.BytePiecesData652
import InitECandidate.Bytes138
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate138_eq : InitECandidate.bytes138 = [piece651_2, piece652_0].flatten := by
  rw [piece651_2_eq, piece652_0_eq]
  rfl
#print axioms candidate138_eq
end InitECandidate.Proofs.BackendStages.BytePieces
