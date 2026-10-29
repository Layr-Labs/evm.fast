import InitECandidate.Proofs.BackendStages.BytePiecesData228
import InitECandidate.Proofs.BackendStages.BytePiecesData229
import InitECandidate.Proofs.BackendStages.BytePiecesData230
import InitECandidate.Proofs.BackendStages.BytePiecesData231
import InitECandidate.Bytes037
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate037_eq : InitECandidate.bytes037 = [piece228_1, piece229_0, piece230_0, piece231_0].flatten := by
  rw [piece228_1_eq, piece229_0_eq, piece230_0_eq, piece231_0_eq]
  rfl
#print axioms candidate037_eq
end InitECandidate.Proofs.BackendStages.BytePieces
