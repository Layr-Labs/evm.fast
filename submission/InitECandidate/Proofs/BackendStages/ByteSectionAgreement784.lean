import InitECandidate.Proofs.BackendStages.BytesData784
import InitECandidate.Proofs.BackendStages.BytePiecesData784
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section784_eq : ByteData.bytes784 = [piece784_0, piece784_1].flatten := by
  rw [piece784_0_eq, piece784_1_eq]
  rfl
#print axioms section784_eq
end InitECandidate.Proofs.BackendStages.BytePieces
