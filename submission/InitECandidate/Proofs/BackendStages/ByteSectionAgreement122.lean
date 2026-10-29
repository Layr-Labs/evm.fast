import InitECandidate.Proofs.BackendStages.BytesData122
import InitECandidate.Proofs.BackendStages.BytePiecesData122
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section122_eq : ByteData.bytes122 = [piece122_0].flatten := by
  rw [piece122_0_eq]
  rfl
#print axioms section122_eq
end InitECandidate.Proofs.BackendStages.BytePieces
