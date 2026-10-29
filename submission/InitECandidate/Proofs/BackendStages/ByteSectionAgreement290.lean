import InitECandidate.Proofs.BackendStages.BytesData290
import InitECandidate.Proofs.BackendStages.BytePiecesData290
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section290_eq : ByteData.bytes290 = [piece290_0].flatten := by
  rw [piece290_0_eq]
  rfl
#print axioms section290_eq
end InitECandidate.Proofs.BackendStages.BytePieces
