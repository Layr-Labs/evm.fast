import InitECandidate.Proofs.BackendStages.BytePiecesData661
import InitECandidate.Bytes144
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate144_eq : InitECandidate.bytes144 = [piece661_2].flatten := by
  rw [piece661_2_eq]
  rfl
#print axioms candidate144_eq
end InitECandidate.Proofs.BackendStages.BytePieces
