import InitECandidate.Proofs.BackendStages.BytePiecesData651
import InitECandidate.Bytes137
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate137_eq : InitECandidate.bytes137 = [piece651_1].flatten := by
  rw [piece651_1_eq]
  rfl
#print axioms candidate137_eq
end InitECandidate.Proofs.BackendStages.BytePieces
