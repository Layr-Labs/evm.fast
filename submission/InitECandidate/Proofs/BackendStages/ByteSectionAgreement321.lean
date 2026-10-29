import InitECandidate.Proofs.BackendStages.BytesData321
import InitECandidate.Proofs.BackendStages.BytePiecesData321
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section321_eq : ByteData.bytes321 = [piece321_0].flatten := by
  rw [piece321_0_eq]
  rfl
#print axioms section321_eq
end InitECandidate.Proofs.BackendStages.BytePieces
