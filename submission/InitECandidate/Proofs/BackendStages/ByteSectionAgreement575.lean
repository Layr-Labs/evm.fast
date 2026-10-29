import InitECandidate.Proofs.BackendStages.BytesData575
import InitECandidate.Proofs.BackendStages.BytePiecesData575
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section575_eq : ByteData.bytes575 = [piece575_0].flatten := by
  rw [piece575_0_eq]
  rfl
#print axioms section575_eq
end InitECandidate.Proofs.BackendStages.BytePieces
