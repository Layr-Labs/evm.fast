import InitECandidate.Proofs.BackendStages.BytesData216
import InitECandidate.Proofs.BackendStages.BytePiecesData216
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section216_eq : ByteData.bytes216 = [piece216_0].flatten := by
  rw [piece216_0_eq]
  rfl
#print axioms section216_eq
end InitECandidate.Proofs.BackendStages.BytePieces
