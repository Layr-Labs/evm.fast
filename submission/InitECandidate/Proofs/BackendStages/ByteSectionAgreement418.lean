import InitECandidate.Proofs.BackendStages.BytesData418
import InitECandidate.Proofs.BackendStages.BytePiecesData418
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section418_eq : ByteData.bytes418 = [piece418_0].flatten := by
  rw [piece418_0_eq]
  rfl
#print axioms section418_eq
end InitECandidate.Proofs.BackendStages.BytePieces
