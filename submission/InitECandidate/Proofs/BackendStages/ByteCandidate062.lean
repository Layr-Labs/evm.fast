import InitECandidate.Proofs.BackendStages.BytePiecesData322
import InitECandidate.Proofs.BackendStages.BytePiecesData323
import InitECandidate.Proofs.BackendStages.BytePiecesData324
import InitECandidate.Proofs.BackendStages.BytePiecesData325
import InitECandidate.Bytes062
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate062_eq : InitECandidate.bytes062 = [piece322_1, piece323_0, piece324_0, piece325_0].flatten := by
  rw [piece322_1_eq, piece323_0_eq, piece324_0_eq, piece325_0_eq]
  rfl
#print axioms candidate062_eq
end InitECandidate.Proofs.BackendStages.BytePieces
