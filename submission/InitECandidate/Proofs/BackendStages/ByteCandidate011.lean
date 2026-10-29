import InitECandidate.Proofs.BackendStages.BytePiecesData151
import InitECandidate.Bytes011
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate011_eq : InitECandidate.bytes011 = [piece151_3].flatten := by
  rw [piece151_3_eq]
  rfl
#print axioms candidate011_eq
end InitECandidate.Proofs.BackendStages.BytePieces
