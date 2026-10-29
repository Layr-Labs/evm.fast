import InitECandidate.Proofs.BackendStages.BytesData761
import InitECandidate.Proofs.BackendStages.BytePiecesData761
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section761_eq : ByteData.bytes761 = [piece761_0].flatten := by
  rw [piece761_0_eq]
  rfl
#print axioms section761_eq
end InitECandidate.Proofs.BackendStages.BytePieces
