import InitECandidate.Proofs.BackendStages.BytesData304
import InitECandidate.Proofs.BackendStages.BytePiecesData304
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section304_eq : ByteData.bytes304 = [piece304_0].flatten := by
  rw [piece304_0_eq]
  rfl
#print axioms section304_eq
end InitECandidate.Proofs.BackendStages.BytePieces
