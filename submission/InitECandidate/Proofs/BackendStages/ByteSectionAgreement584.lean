import InitECandidate.Proofs.BackendStages.BytesData584
import InitECandidate.Proofs.BackendStages.BytePiecesData584
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section584_eq : ByteData.bytes584 = [piece584_0].flatten := by
  rw [piece584_0_eq]
  rfl
#print axioms section584_eq
end InitECandidate.Proofs.BackendStages.BytePieces
