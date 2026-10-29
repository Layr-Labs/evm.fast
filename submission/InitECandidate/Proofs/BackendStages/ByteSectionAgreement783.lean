import InitECandidate.Proofs.BackendStages.BytesData783
import InitECandidate.Proofs.BackendStages.BytePiecesData783
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section783_eq : ByteData.bytes783 = [piece783_0, piece783_1].flatten := by
  rw [piece783_0_eq, piece783_1_eq]
  rfl
#print axioms section783_eq
end InitECandidate.Proofs.BackendStages.BytePieces
