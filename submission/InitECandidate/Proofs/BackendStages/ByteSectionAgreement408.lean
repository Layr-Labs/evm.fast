import InitECandidate.Proofs.BackendStages.BytesData408
import InitECandidate.Proofs.BackendStages.BytePiecesData408
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section408_eq : ByteData.bytes408 = [piece408_0].flatten := by
  rw [piece408_0_eq]
  rfl
#print axioms section408_eq
end InitECandidate.Proofs.BackendStages.BytePieces
