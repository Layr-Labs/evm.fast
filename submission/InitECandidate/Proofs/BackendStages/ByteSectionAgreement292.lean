import InitECandidate.Proofs.BackendStages.BytesData292
import InitECandidate.Proofs.BackendStages.BytePiecesData292
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section292_eq : ByteData.bytes292 = [piece292_0].flatten := by
  rw [piece292_0_eq]
  rfl
#print axioms section292_eq
end InitECandidate.Proofs.BackendStages.BytePieces
