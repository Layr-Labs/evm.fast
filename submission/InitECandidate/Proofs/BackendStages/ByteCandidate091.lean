import InitECandidate.Proofs.BackendStages.BytePiecesData503
import InitECandidate.Proofs.BackendStages.BytePiecesData504
import InitECandidate.Proofs.BackendStages.BytePiecesData505
import InitECandidate.Proofs.BackendStages.BytePiecesData506
import InitECandidate.Proofs.BackendStages.BytePiecesData507
import InitECandidate.Proofs.BackendStages.BytePiecesData508
import InitECandidate.Bytes091
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate091_eq : InitECandidate.bytes091 = [piece503_1, piece504_0, piece505_0, piece506_0, piece507_0, piece508_0].flatten := by
  rw [piece503_1_eq, piece504_0_eq, piece505_0_eq, piece506_0_eq, piece507_0_eq, piece508_0_eq]
  rfl
#print axioms candidate091_eq
end InitECandidate.Proofs.BackendStages.BytePieces
