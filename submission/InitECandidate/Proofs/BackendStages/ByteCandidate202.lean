import InitECandidate.Proofs.BackendStages.BytePiecesData795
import InitECandidate.Proofs.BackendStages.BytePiecesData796
import InitECandidate.Bytes202
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate202_eq : InitECandidate.bytes202 = [piece795_1, piece796_0].flatten := by
  rw [piece795_1_eq, piece796_0_eq]
  rfl
#print axioms candidate202_eq
end InitECandidate.Proofs.BackendStages.BytePieces
