import InitECandidate.Proofs.BackendStages.BytesData78
import InitECandidate.Proofs.BackendStages.BytePiecesData78
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section78_eq : ByteData.bytes78 = [piece78_0].flatten := by
  rw [piece78_0_eq]
  rfl
#print axioms section78_eq
end InitECandidate.Proofs.BackendStages.BytePieces
