import InitECandidate.Proofs.BackendStages.BytesData771
import InitECandidate.Proofs.BackendStages.BytePiecesData771
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section771_eq : ByteData.bytes771 = [piece771_0, piece771_1, piece771_2].flatten := by
  rw [piece771_0_eq, piece771_1_eq, piece771_2_eq]
  rfl
#print axioms section771_eq
end InitECandidate.Proofs.BackendStages.BytePieces
