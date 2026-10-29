import InitECandidate.Proofs.BackendStages.BytesData97
import InitECandidate.Proofs.BackendStages.BytePiecesData97
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section97_eq : ByteData.bytes97 = [piece97_0].flatten := by
  rw [piece97_0_eq]
  rfl
#print axioms section97_eq
end InitECandidate.Proofs.BackendStages.BytePieces
