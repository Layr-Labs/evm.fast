import InitECandidate.Proofs.BackendStages.BytesData126
import InitECandidate.Proofs.BackendStages.BytePiecesData126
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section126_eq : ByteData.bytes126 = [piece126_0].flatten := by
  rw [piece126_0_eq]
  rfl
#print axioms section126_eq
end InitECandidate.Proofs.BackendStages.BytePieces
