import InitECandidate.Proofs.BackendStages.BytesData580
import InitECandidate.Proofs.BackendStages.BytePiecesData580
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section580_eq : ByteData.bytes580 = [piece580_0, piece580_1].flatten := by
  rw [piece580_0_eq, piece580_1_eq]
  rfl
#print axioms section580_eq
end InitECandidate.Proofs.BackendStages.BytePieces
