import InitECandidate.Proofs.BackendStages.BytesData271
import InitECandidate.Proofs.BackendStages.BytePiecesData271
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section271_eq : ByteData.bytes271 = [piece271_0].flatten := by
  rw [piece271_0_eq]
  rfl
#print axioms section271_eq
end InitECandidate.Proofs.BackendStages.BytePieces
