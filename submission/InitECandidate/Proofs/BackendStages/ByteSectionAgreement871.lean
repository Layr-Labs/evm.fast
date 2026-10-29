import InitECandidate.Proofs.BackendStages.BytesData871
import InitECandidate.Proofs.BackendStages.BytePiecesData871
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section871_eq : ByteData.bytes871 = [piece871_0].flatten := by
  rw [piece871_0_eq]
  rfl
#print axioms section871_eq
end InitECandidate.Proofs.BackendStages.BytePieces
