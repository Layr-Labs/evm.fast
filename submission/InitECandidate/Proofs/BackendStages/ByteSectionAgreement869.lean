import InitECandidate.Proofs.BackendStages.BytesData869
import InitECandidate.Proofs.BackendStages.BytePiecesData869
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section869_eq : ByteData.bytes869 = [piece869_0, piece869_1].flatten := by
  rw [piece869_0_eq, piece869_1_eq]
  rfl
#print axioms section869_eq
end InitECandidate.Proofs.BackendStages.BytePieces
