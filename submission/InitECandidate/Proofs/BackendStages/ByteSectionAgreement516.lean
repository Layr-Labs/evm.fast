import InitECandidate.Proofs.BackendStages.BytesData516
import InitECandidate.Proofs.BackendStages.BytePiecesData516
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section516_eq : ByteData.bytes516 = [piece516_0].flatten := by
  rw [piece516_0_eq]
  rfl
#print axioms section516_eq
end InitECandidate.Proofs.BackendStages.BytePieces
