import InitECandidate.Proofs.BackendStages.BytesData751
import InitECandidate.Proofs.BackendStages.BytePiecesData751
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section751_eq : ByteData.bytes751 = [piece751_0].flatten := by
  rw [piece751_0_eq]
  rfl
#print axioms section751_eq
end InitECandidate.Proofs.BackendStages.BytePieces
