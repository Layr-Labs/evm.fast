import InitECandidate.Proofs.BackendStages.BytesData460
import InitECandidate.Proofs.BackendStages.BytePiecesData460
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section460_eq : ByteData.bytes460 = [piece460_0].flatten := by
  rw [piece460_0_eq]
  rfl
#print axioms section460_eq
end InitECandidate.Proofs.BackendStages.BytePieces
