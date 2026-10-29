import InitECandidate.Proofs.BackendStages.BytesData687
import InitECandidate.Proofs.BackendStages.BytePiecesData687
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section687_eq : ByteData.bytes687 = [piece687_0].flatten := by
  rw [piece687_0_eq]
  rfl
#print axioms section687_eq
end InitECandidate.Proofs.BackendStages.BytePieces
