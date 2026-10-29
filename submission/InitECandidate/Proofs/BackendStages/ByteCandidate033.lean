import InitECandidate.Proofs.BackendStages.BytePiecesData224
import InitECandidate.Proofs.BackendStages.BytePiecesData225
import InitECandidate.Bytes033
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate033_eq : InitECandidate.bytes033 = [piece224_2, piece225_0].flatten := by
  rw [piece224_2_eq, piece225_0_eq]
  rfl
#print axioms candidate033_eq
end InitECandidate.Proofs.BackendStages.BytePieces
