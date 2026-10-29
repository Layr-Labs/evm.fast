import InitECandidate.Proofs.BackendStages.BytesData661
import InitECandidate.Proofs.BackendStages.BytePiecesData661
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section661_eq : ByteData.bytes661 = [piece661_0, piece661_1, piece661_2, piece661_3].flatten := by
  rw [piece661_0_eq, piece661_1_eq, piece661_2_eq, piece661_3_eq]
  rfl
#print axioms section661_eq
end InitECandidate.Proofs.BackendStages.BytePieces
