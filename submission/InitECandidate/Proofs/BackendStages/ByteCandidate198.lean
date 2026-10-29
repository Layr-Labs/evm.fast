import InitECandidate.Proofs.BackendStages.BytePiecesData790
import InitECandidate.Proofs.BackendStages.BytePiecesData791
import InitECandidate.Bytes198
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate198_eq : InitECandidate.bytes198 = [piece790_1, piece791_0].flatten := by
  rw [piece790_1_eq, piece791_0_eq]
  rfl
#print axioms candidate198_eq
end InitECandidate.Proofs.BackendStages.BytePieces
