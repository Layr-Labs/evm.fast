import InitECandidate.Proofs.BackendStages.BytesData765
import InitECandidate.Proofs.BackendStages.BytePiecesData765
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section765_eq : ByteData.bytes765 = [piece765_0, piece765_1].flatten := by
  rw [piece765_0_eq, piece765_1_eq]
  rfl
#print axioms section765_eq
end InitECandidate.Proofs.BackendStages.BytePieces
