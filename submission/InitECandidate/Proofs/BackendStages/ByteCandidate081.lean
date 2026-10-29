import InitECandidate.Proofs.BackendStages.BytePiecesData450
import InitECandidate.Proofs.BackendStages.BytePiecesData451
import InitECandidate.Proofs.BackendStages.BytePiecesData452
import InitECandidate.Proofs.BackendStages.BytePiecesData453
import InitECandidate.Proofs.BackendStages.BytePiecesData454
import InitECandidate.Bytes081
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate081_eq : InitECandidate.bytes081 = [piece450_1, piece451_0, piece452_0, piece453_0, piece454_0].flatten := by
  rw [piece450_1_eq, piece451_0_eq, piece452_0_eq, piece453_0_eq, piece454_0_eq]
  rfl
#print axioms candidate081_eq
end InitECandidate.Proofs.BackendStages.BytePieces
