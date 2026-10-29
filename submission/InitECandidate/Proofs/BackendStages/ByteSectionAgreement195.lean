import InitECandidate.Proofs.BackendStages.BytesData195
import InitECandidate.Proofs.BackendStages.BytePiecesData195
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section195_eq : ByteData.bytes195 = [piece195_0].flatten := by
  rw [piece195_0_eq]
  rfl
#print axioms section195_eq
end InitECandidate.Proofs.BackendStages.BytePieces
