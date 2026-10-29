import InitECandidate.Proofs.BackendStages.BytesData777
import InitECandidate.Proofs.BackendStages.BytePiecesData777
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section777_eq : ByteData.bytes777 = [piece777_0, piece777_1].flatten := by
  rw [piece777_0_eq, piece777_1_eq]
  rfl
#print axioms section777_eq
end InitECandidate.Proofs.BackendStages.BytePieces
