import InitECandidate.Proofs.BackendStages.BytePiecesData151
import InitECandidate.Bytes010
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate010_eq : InitECandidate.bytes010 = [piece151_2].flatten := by
  rw [piece151_2_eq]
  rfl
#print axioms candidate010_eq
end InitECandidate.Proofs.BackendStages.BytePieces
