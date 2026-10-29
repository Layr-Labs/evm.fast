import InitECandidate.Proofs.BackendStages.BytesData185
import InitECandidate.Proofs.BackendStages.BytePiecesData185
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section185_eq : ByteData.bytes185 = [piece185_0].flatten := by
  rw [piece185_0_eq]
  rfl
#print axioms section185_eq
end InitECandidate.Proofs.BackendStages.BytePieces
