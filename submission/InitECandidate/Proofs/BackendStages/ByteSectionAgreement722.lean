import InitECandidate.Proofs.BackendStages.BytesData722
import InitECandidate.Proofs.BackendStages.BytePiecesData722
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section722_eq : ByteData.bytes722 = [piece722_0, piece722_1].flatten := by
  rw [piece722_0_eq, piece722_1_eq]
  rfl
#print axioms section722_eq
end InitECandidate.Proofs.BackendStages.BytePieces
