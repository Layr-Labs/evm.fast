import InitECandidate.Proofs.BackendStages.BytesData414
import InitECandidate.Proofs.BackendStages.BytePiecesData414
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section414_eq : ByteData.bytes414 = [piece414_0, piece414_1].flatten := by
  rw [piece414_0_eq, piece414_1_eq]
  rfl
#print axioms section414_eq
end InitECandidate.Proofs.BackendStages.BytePieces
