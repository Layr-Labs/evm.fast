import InitECandidate.Proofs.BackendStages.BytesData849
import InitECandidate.Proofs.BackendStages.BytePiecesData849
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section849_eq : ByteData.bytes849 = [piece849_0].flatten := by
  rw [piece849_0_eq]
  rfl
#print axioms section849_eq
end InitECandidate.Proofs.BackendStages.BytePieces
