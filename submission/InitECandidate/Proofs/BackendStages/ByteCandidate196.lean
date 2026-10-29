import InitECandidate.Proofs.BackendStages.BytePiecesData784
import InitECandidate.Proofs.BackendStages.BytePiecesData785
import InitECandidate.Proofs.BackendStages.BytePiecesData786
import InitECandidate.Proofs.BackendStages.BytePiecesData787
import InitECandidate.Bytes196
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate196_eq : InitECandidate.bytes196 = [piece784_1, piece785_0, piece786_0, piece787_0].flatten := by
  rw [piece784_1_eq, piece785_0_eq, piece786_0_eq, piece787_0_eq]
  rfl
#print axioms candidate196_eq
end InitECandidate.Proofs.BackendStages.BytePieces
