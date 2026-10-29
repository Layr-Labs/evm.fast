import InitECandidate.Proofs.BackendStages.BytesData614
import InitECandidate.Proofs.BackendStages.BytePiecesData614
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section614_eq : ByteData.bytes614 = [piece614_0].flatten := by
  rw [piece614_0_eq]
  rfl
#print axioms section614_eq
end InitECandidate.Proofs.BackendStages.BytePieces
