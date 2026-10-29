import InitECandidate.Proofs.BackendStages.BytesData718
import InitECandidate.Proofs.BackendStages.BytePiecesData718
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section718_eq : ByteData.bytes718 = [piece718_0].flatten := by
  rw [piece718_0_eq]
  rfl
#print axioms section718_eq
end InitECandidate.Proofs.BackendStages.BytePieces
