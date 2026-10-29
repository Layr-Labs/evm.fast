import InitECandidate.Proofs.BackendStages.BytesData248
import InitECandidate.Proofs.BackendStages.BytePiecesData248
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section248_eq : ByteData.bytes248 = [piece248_0, piece248_1].flatten := by
  rw [piece248_0_eq, piece248_1_eq]
  rfl
#print axioms section248_eq
end InitECandidate.Proofs.BackendStages.BytePieces
