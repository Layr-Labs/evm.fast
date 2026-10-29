import InitECandidate.Proofs.BackendStages.BytesData670
import InitECandidate.Proofs.BackendStages.BytePiecesData670
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section670_eq : ByteData.bytes670 = [piece670_0, piece670_1].flatten := by
  rw [piece670_0_eq, piece670_1_eq]
  rfl
#print axioms section670_eq
end InitECandidate.Proofs.BackendStages.BytePieces
