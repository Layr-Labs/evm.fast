import InitECandidate.Proofs.BackendStages.BytesData166
import InitECandidate.Proofs.BackendStages.BytePiecesData166
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section166_eq : ByteData.bytes166 = [piece166_0].flatten := by
  rw [piece166_0_eq]
  rfl
#print axioms section166_eq
end InitECandidate.Proofs.BackendStages.BytePieces
