import InitECandidate.Proofs.BackendStages.BytePiecesData361
import InitECandidate.Proofs.BackendStages.BytePiecesData362
import InitECandidate.Proofs.BackendStages.BytePiecesData363
import InitECandidate.Proofs.BackendStages.BytePiecesData364
import InitECandidate.Proofs.BackendStages.BytePiecesData365
import InitECandidate.Bytes068
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate068_eq : InitECandidate.bytes068 = [piece361_1, piece362_0, piece363_0, piece364_0, piece365_0].flatten := by
  rw [piece361_1_eq, piece362_0_eq, piece363_0_eq, piece364_0_eq, piece365_0_eq]
  rfl
#print axioms candidate068_eq
end InitECandidate.Proofs.BackendStages.BytePieces
