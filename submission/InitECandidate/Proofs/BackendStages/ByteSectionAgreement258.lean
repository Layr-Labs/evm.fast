import InitECandidate.Proofs.BackendStages.BytesData258
import InitECandidate.Proofs.BackendStages.BytePiecesData258
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section258_eq : ByteData.bytes258 = [piece258_0].flatten := by
  rw [piece258_0_eq]
  rfl
#print axioms section258_eq
end InitECandidate.Proofs.BackendStages.BytePieces
