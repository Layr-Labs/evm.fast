import InitECandidate.Proofs.BackendStages.BytePiecesData272
import InitECandidate.Proofs.BackendStages.BytePiecesData273
import InitECandidate.Proofs.BackendStages.BytePiecesData274
import InitECandidate.Bytes051
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate051_eq : InitECandidate.bytes051 = [piece272_1, piece273_0, piece274_0].flatten := by
  rw [piece272_1_eq, piece273_0_eq, piece274_0_eq]
  rfl
#print axioms candidate051_eq
end InitECandidate.Proofs.BackendStages.BytePieces
