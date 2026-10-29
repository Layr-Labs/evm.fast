import InitECandidate.Proofs.BackendStages.BytesData164
import InitECandidate.Proofs.BackendStages.BytePiecesData164
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section164_eq : ByteData.bytes164 = [piece164_0].flatten := by
  rw [piece164_0_eq]
  rfl
#print axioms section164_eq
end InitECandidate.Proofs.BackendStages.BytePieces
