import InitECandidate.Proofs.BackendStages.BytesData71
import InitECandidate.Proofs.BackendStages.BytePiecesData71
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section71_eq : ByteData.bytes71 = [piece71_0].flatten := by
  rw [piece71_0_eq]
  rfl
#print axioms section71_eq
end InitECandidate.Proofs.BackendStages.BytePieces
