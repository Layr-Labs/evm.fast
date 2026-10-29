import InitECandidate.Proofs.BackendStages.BytePiecesData796
import InitECandidate.Proofs.BackendStages.BytePiecesData797
import InitECandidate.Bytes204
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate204_eq : InitECandidate.bytes204 = [piece796_2, piece797_0].flatten := by
  rw [piece796_2_eq, piece797_0_eq]
  rfl
#print axioms candidate204_eq
end InitECandidate.Proofs.BackendStages.BytePieces
