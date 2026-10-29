import InitECandidate.Proofs.BackendStages.BytePiecesData814
import InitECandidate.Proofs.BackendStages.BytePiecesData815
import InitECandidate.Proofs.BackendStages.BytePiecesData816
import InitECandidate.Proofs.BackendStages.BytePiecesData817
import InitECandidate.Bytes215
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate215_eq : InitECandidate.bytes215 = [piece814_1, piece815_0, piece816_0, piece817_0].flatten := by
  rw [piece814_1_eq, piece815_0_eq, piece816_0_eq, piece817_0_eq]
  rfl
#print axioms candidate215_eq
end InitECandidate.Proofs.BackendStages.BytePieces
