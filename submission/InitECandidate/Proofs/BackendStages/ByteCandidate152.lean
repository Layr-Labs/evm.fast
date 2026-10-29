import InitECandidate.Proofs.BackendStages.BytePiecesData685
import InitECandidate.Proofs.BackendStages.BytePiecesData686
import InitECandidate.Bytes152
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate152_eq : InitECandidate.bytes152 = [piece685_1, piece686_0].flatten := by
  rw [piece685_1_eq, piece686_0_eq]
  rfl
#print axioms candidate152_eq
end InitECandidate.Proofs.BackendStages.BytePieces
