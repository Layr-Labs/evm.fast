import InitECandidate.Proofs.BackendStages.BytePiecesData836
import InitECandidate.Proofs.BackendStages.BytePiecesData837
import InitECandidate.Proofs.BackendStages.BytePiecesData838
import InitECandidate.Bytes221
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate221_eq : InitECandidate.bytes221 = [piece836_1, piece837_0, piece838_0].flatten := by
  rw [piece836_1_eq, piece837_0_eq, piece838_0_eq]
  rfl
#print axioms candidate221_eq
end InitECandidate.Proofs.BackendStages.BytePieces
