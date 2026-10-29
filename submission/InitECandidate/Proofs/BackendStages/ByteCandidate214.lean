import InitECandidate.Proofs.BackendStages.BytePiecesData813
import InitECandidate.Proofs.BackendStages.BytePiecesData814
import InitECandidate.Bytes214
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate214_eq : InitECandidate.bytes214 = [piece813_1, piece814_0].flatten := by
  rw [piece813_1_eq, piece814_0_eq]
  rfl
#print axioms candidate214_eq
end InitECandidate.Proofs.BackendStages.BytePieces
