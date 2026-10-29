import InitECandidate.Proofs.BackendStages.BytesData830
import InitECandidate.Proofs.BackendStages.BytePiecesData830
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section830_eq : ByteData.bytes830 = [piece830_0].flatten := by
  rw [piece830_0_eq]
  rfl
#print axioms section830_eq
end InitECandidate.Proofs.BackendStages.BytePieces
