import InitECandidate.Proofs.BackendStages.BytesData410
import InitECandidate.Proofs.BackendStages.BytePiecesData410
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section410_eq : ByteData.bytes410 = [piece410_0].flatten := by
  rw [piece410_0_eq]
  rfl
#print axioms section410_eq
end InitECandidate.Proofs.BackendStages.BytePieces
