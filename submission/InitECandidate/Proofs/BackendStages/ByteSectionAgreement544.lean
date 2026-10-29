import InitECandidate.Proofs.BackendStages.BytesData544
import InitECandidate.Proofs.BackendStages.BytePiecesData544
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section544_eq : ByteData.bytes544 = [piece544_0].flatten := by
  rw [piece544_0_eq]
  rfl
#print axioms section544_eq
end InitECandidate.Proofs.BackendStages.BytePieces
