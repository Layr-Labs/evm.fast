import InitECandidate.Proofs.BackendStages.BytesData217
import InitECandidate.Proofs.BackendStages.BytePiecesData217
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section217_eq : ByteData.bytes217 = [piece217_0].flatten := by
  rw [piece217_0_eq]
  rfl
#print axioms section217_eq
end InitECandidate.Proofs.BackendStages.BytePieces
