import InitECandidate.Proofs.BackendStages.BytePiecesData834
import InitECandidate.Proofs.BackendStages.BytePiecesData835
import InitECandidate.Proofs.BackendStages.BytePiecesData836
import InitECandidate.Bytes220
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate220_eq : InitECandidate.bytes220 = [piece834_1, piece835_0, piece836_0].flatten := by
  rw [piece834_1_eq, piece835_0_eq, piece836_0_eq]
  rfl
#print axioms candidate220_eq
end InitECandidate.Proofs.BackendStages.BytePieces
