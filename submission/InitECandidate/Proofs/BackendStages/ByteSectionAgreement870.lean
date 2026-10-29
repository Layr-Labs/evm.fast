import InitECandidate.Proofs.BackendStages.BytesData870
import InitECandidate.Proofs.BackendStages.BytePiecesData870
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section870_eq : ByteData.bytes870 = [piece870_0].flatten := by
  rw [piece870_0_eq]
  rfl
#print axioms section870_eq
end InitECandidate.Proofs.BackendStages.BytePieces
