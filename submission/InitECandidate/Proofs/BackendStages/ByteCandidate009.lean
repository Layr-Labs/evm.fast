import InitECandidate.Proofs.BackendStages.BytePiecesData151
import InitECandidate.Bytes009
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate009_eq : InitECandidate.bytes009 = [piece151_1].flatten := by
  rw [piece151_1_eq]
  rfl
#print axioms candidate009_eq
end InitECandidate.Proofs.BackendStages.BytePieces
