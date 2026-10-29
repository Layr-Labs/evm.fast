import InitECandidate.Proofs.BackendStages.BytesData740
import InitECandidate.Proofs.BackendStages.BytePiecesData740
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section740_eq : ByteData.bytes740 = [piece740_0].flatten := by
  rw [piece740_0_eq]
  rfl
#print axioms section740_eq
end InitECandidate.Proofs.BackendStages.BytePieces
