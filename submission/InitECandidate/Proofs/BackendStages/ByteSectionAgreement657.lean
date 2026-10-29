import InitECandidate.Proofs.BackendStages.BytesData657
import InitECandidate.Proofs.BackendStages.BytePiecesData657
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section657_eq : ByteData.bytes657 = [piece657_0, piece657_1].flatten := by
  rw [piece657_0_eq, piece657_1_eq]
  rfl
#print axioms section657_eq
end InitECandidate.Proofs.BackendStages.BytePieces
