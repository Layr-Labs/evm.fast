import InitECandidate.Proofs.BackendStages.BytePiecesData787
import InitECandidate.Proofs.BackendStages.BytePiecesData788
import InitECandidate.Proofs.BackendStages.BytePiecesData789
import InitECandidate.Proofs.BackendStages.BytePiecesData790
import InitECandidate.Bytes197
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate197_eq : InitECandidate.bytes197 = [piece787_1, piece788_0, piece789_0, piece790_0].flatten := by
  rw [piece787_1_eq, piece788_0_eq, piece789_0_eq, piece790_0_eq]
  rfl
#print axioms candidate197_eq
end InitECandidate.Proofs.BackendStages.BytePieces
