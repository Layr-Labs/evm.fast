import InitECandidate.Proofs.BackendStages.BytesData325
import InitECandidate.Proofs.BackendStages.BytePiecesData325
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section325_eq : ByteData.bytes325 = [piece325_0, piece325_1].flatten := by
  rw [piece325_0_eq, piece325_1_eq]
  rfl
#print axioms section325_eq
end InitECandidate.Proofs.BackendStages.BytePieces
