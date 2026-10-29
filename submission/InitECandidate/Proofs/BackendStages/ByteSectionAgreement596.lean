import InitECandidate.Proofs.BackendStages.BytesData596
import InitECandidate.Proofs.BackendStages.BytePiecesData596
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section596_eq : ByteData.bytes596 = [piece596_0].flatten := by
  rw [piece596_0_eq]
  rfl
#print axioms section596_eq
end InitECandidate.Proofs.BackendStages.BytePieces
