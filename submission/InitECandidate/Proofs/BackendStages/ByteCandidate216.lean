import InitECandidate.Proofs.BackendStages.BytePiecesData817
import InitECandidate.Proofs.BackendStages.BytePiecesData818
import InitECandidate.Bytes216
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate216_eq : InitECandidate.bytes216 = [piece817_1, piece818_0].flatten := by
  rw [piece817_1_eq, piece818_0_eq]
  rfl
#print axioms candidate216_eq
end InitECandidate.Proofs.BackendStages.BytePieces
