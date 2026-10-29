import InitECandidate.Proofs.BackendStages.BytesData523
import InitECandidate.Proofs.BackendStages.BytePiecesData523
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section523_eq : ByteData.bytes523 = [piece523_0, piece523_1].flatten := by
  rw [piece523_0_eq, piece523_1_eq]
  rfl
#print axioms section523_eq
end InitECandidate.Proofs.BackendStages.BytePieces
