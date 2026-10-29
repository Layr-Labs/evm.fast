import InitECandidate.Proofs.BackendStages.BytesData616
import InitECandidate.Proofs.BackendStages.BytePiecesData616
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section616_eq : ByteData.bytes616 = [piece616_0, piece616_1].flatten := by
  rw [piece616_0_eq, piece616_1_eq]
  rfl
#print axioms section616_eq
end InitECandidate.Proofs.BackendStages.BytePieces
