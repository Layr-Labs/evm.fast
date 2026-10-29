import InitECandidate.Proofs.BackendStages.BytesData595
import InitECandidate.Proofs.BackendStages.BytePiecesData595
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section595_eq : ByteData.bytes595 = [piece595_0, piece595_1, piece595_2, piece595_3].flatten := by
  rw [piece595_0_eq, piece595_1_eq, piece595_2_eq, piece595_3_eq]
  rfl
#print axioms section595_eq
end InitECandidate.Proofs.BackendStages.BytePieces
