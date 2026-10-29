import InitECandidate.Proofs.BackendStages.BytesData229
import InitECandidate.Proofs.BackendStages.BytePiecesData229
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section229_eq : ByteData.bytes229 = [piece229_0].flatten := by
  rw [piece229_0_eq]
  rfl
#print axioms section229_eq
end InitECandidate.Proofs.BackendStages.BytePieces
