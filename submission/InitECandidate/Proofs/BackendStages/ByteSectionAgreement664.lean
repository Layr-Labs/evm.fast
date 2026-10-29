import InitECandidate.Proofs.BackendStages.BytesData664
import InitECandidate.Proofs.BackendStages.BytePiecesData664
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section664_eq : ByteData.bytes664 = [piece664_0].flatten := by
  rw [piece664_0_eq]
  rfl
#print axioms section664_eq
end InitECandidate.Proofs.BackendStages.BytePieces
