import InitECandidate.Proofs.BackendStages.BytePiecesData771
import InitECandidate.Bytes190
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate190_eq : InitECandidate.bytes190 = [piece771_1].flatten := by
  rw [piece771_1_eq]
  rfl
#print axioms candidate190_eq
end InitECandidate.Proofs.BackendStages.BytePieces
