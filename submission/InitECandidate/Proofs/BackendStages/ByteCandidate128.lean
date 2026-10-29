import InitECandidate.Proofs.BackendStages.BytePiecesData627
import InitECandidate.Proofs.BackendStages.BytePiecesData628
import InitECandidate.Proofs.BackendStages.BytePiecesData629
import InitECandidate.Proofs.BackendStages.BytePiecesData630
import InitECandidate.Proofs.BackendStages.BytePiecesData631
import InitECandidate.Proofs.BackendStages.BytePiecesData632
import InitECandidate.Bytes128
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate128_eq : InitECandidate.bytes128 = [piece627_1, piece628_0, piece629_0, piece630_0, piece631_0, piece632_0].flatten := by
  rw [piece627_1_eq, piece628_0_eq, piece629_0_eq, piece630_0_eq, piece631_0_eq, piece632_0_eq]
  rfl
#print axioms candidate128_eq
end InitECandidate.Proofs.BackendStages.BytePieces
