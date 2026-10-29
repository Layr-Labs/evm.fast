import InitECandidate.Proofs.BackendStages.BytesData183
import InitECandidate.Proofs.BackendStages.BytePiecesData183
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section183_eq : ByteData.bytes183 = [piece183_0].flatten := by
  rw [piece183_0_eq]
  rfl
#print axioms section183_eq
end InitECandidate.Proofs.BackendStages.BytePieces
