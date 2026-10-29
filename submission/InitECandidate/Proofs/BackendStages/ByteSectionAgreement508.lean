import InitECandidate.Proofs.BackendStages.BytesData508
import InitECandidate.Proofs.BackendStages.BytePiecesData508
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section508_eq : ByteData.bytes508 = [piece508_0, piece508_1].flatten := by
  rw [piece508_0_eq, piece508_1_eq]
  rfl
#print axioms section508_eq
end InitECandidate.Proofs.BackendStages.BytePieces
