import InitECandidate.Proofs.BackendStages.BytesData690
import InitECandidate.Proofs.BackendStages.BytePiecesData690
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section690_eq : ByteData.bytes690 = [piece690_0, piece690_1].flatten := by
  rw [piece690_0_eq, piece690_1_eq]
  rfl
#print axioms section690_eq
end InitECandidate.Proofs.BackendStages.BytePieces
