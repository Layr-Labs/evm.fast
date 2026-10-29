import InitECandidate.Proofs.BackendStages.BytesData260
import InitECandidate.Proofs.BackendStages.BytePiecesData260
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section260_eq : ByteData.bytes260 = [piece260_0].flatten := by
  rw [piece260_0_eq]
  rfl
#print axioms section260_eq
end InitECandidate.Proofs.BackendStages.BytePieces
