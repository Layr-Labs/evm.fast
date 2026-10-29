import InitECandidate.Proofs.BackendStages.BytesData820
import InitECandidate.Proofs.BackendStages.BytePiecesData820
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section820_eq : ByteData.bytes820 = [piece820_0].flatten := by
  rw [piece820_0_eq]
  rfl
#print axioms section820_eq
end InitECandidate.Proofs.BackendStages.BytePieces
