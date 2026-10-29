import InitECandidate.Proofs.BackendStages.BytesData443
import InitECandidate.Proofs.BackendStages.BytePiecesData443
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section443_eq : ByteData.bytes443 = [piece443_0].flatten := by
  rw [piece443_0_eq]
  rfl
#print axioms section443_eq
end InitECandidate.Proofs.BackendStages.BytePieces
