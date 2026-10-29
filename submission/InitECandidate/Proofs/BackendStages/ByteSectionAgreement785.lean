import InitECandidate.Proofs.BackendStages.BytesData785
import InitECandidate.Proofs.BackendStages.BytePiecesData785
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section785_eq : ByteData.bytes785 = [piece785_0].flatten := by
  rw [piece785_0_eq]
  rfl
#print axioms section785_eq
end InitECandidate.Proofs.BackendStages.BytePieces
