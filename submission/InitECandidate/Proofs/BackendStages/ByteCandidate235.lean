import InitECandidate.Proofs.BackendStages.BytePiecesData863
import InitECandidate.Proofs.BackendStages.BytePiecesData864
import InitECandidate.Proofs.BackendStages.BytePiecesData865
import InitECandidate.Proofs.BackendStages.BytePiecesData866
import InitECandidate.Proofs.BackendStages.BytePiecesData867
import InitECandidate.Bytes235
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate235_eq : InitECandidate.bytes235 = [piece863_4, piece864_0, piece865_0, piece866_0, piece867_0].flatten := by
  rw [piece863_4_eq, piece864_0_eq, piece865_0_eq, piece866_0_eq, piece867_0_eq]
  rfl
#print axioms candidate235_eq
end InitECandidate.Proofs.BackendStages.BytePieces
