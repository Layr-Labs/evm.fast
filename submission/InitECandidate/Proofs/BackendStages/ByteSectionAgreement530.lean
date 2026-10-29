import InitECandidate.Proofs.BackendStages.BytesData530
import InitECandidate.Proofs.BackendStages.BytePiecesData530
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section530_eq : ByteData.bytes530 = [piece530_0, piece530_1].flatten := by
  rw [piece530_0_eq, piece530_1_eq]
  rfl
#print axioms section530_eq
end InitECandidate.Proofs.BackendStages.BytePieces
