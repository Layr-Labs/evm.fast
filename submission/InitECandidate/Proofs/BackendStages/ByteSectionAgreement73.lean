import InitECandidate.Proofs.BackendStages.BytesData73
import InitECandidate.Proofs.BackendStages.BytePiecesData73
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section73_eq : ByteData.bytes73 = [piece73_0].flatten := by
  rw [piece73_0_eq]
  rfl
#print axioms section73_eq
end InitECandidate.Proofs.BackendStages.BytePieces
