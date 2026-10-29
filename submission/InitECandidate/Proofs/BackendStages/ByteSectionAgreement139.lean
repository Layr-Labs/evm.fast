import InitECandidate.Proofs.BackendStages.BytesData139
import InitECandidate.Proofs.BackendStages.BytePiecesData139
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section139_eq : ByteData.bytes139 = [piece139_0].flatten := by
  rw [piece139_0_eq]
  rfl
#print axioms section139_eq
end InitECandidate.Proofs.BackendStages.BytePieces
