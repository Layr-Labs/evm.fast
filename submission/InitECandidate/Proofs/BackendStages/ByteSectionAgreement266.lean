import InitECandidate.Proofs.BackendStages.BytesData266
import InitECandidate.Proofs.BackendStages.BytePiecesData266
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section266_eq : ByteData.bytes266 = [piece266_0].flatten := by
  rw [piece266_0_eq]
  rfl
#print axioms section266_eq
end InitECandidate.Proofs.BackendStages.BytePieces
