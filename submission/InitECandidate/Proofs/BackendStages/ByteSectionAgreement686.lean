import InitECandidate.Proofs.BackendStages.BytesData686
import InitECandidate.Proofs.BackendStages.BytePiecesData686
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section686_eq : ByteData.bytes686 = [piece686_0, piece686_1].flatten := by
  rw [piece686_0_eq, piece686_1_eq]
  rfl
#print axioms section686_eq
end InitECandidate.Proofs.BackendStages.BytePieces
