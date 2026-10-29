import InitECandidate.Proofs.BackendStages.BytePiecesData782
import InitECandidate.Proofs.BackendStages.BytePiecesData783
import InitECandidate.Bytes194
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate194_eq : InitECandidate.bytes194 = [piece782_1, piece783_0].flatten := by
  rw [piece782_1_eq, piece783_0_eq]
  rfl
#print axioms candidate194_eq
end InitECandidate.Proofs.BackendStages.BytePieces
