import InitECandidate.Proofs.BackendStages.BytesData752
import InitECandidate.Proofs.BackendStages.BytePiecesData752
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section752_eq : ByteData.bytes752 = [piece752_0, piece752_1].flatten := by
  rw [piece752_0_eq, piece752_1_eq]
  rfl
#print axioms section752_eq
end InitECandidate.Proofs.BackendStages.BytePieces
