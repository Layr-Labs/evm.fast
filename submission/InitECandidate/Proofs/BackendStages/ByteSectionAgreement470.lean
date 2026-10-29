import InitECandidate.Proofs.BackendStages.BytesData470
import InitECandidate.Proofs.BackendStages.BytePiecesData470
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section470_eq : ByteData.bytes470 = [piece470_0].flatten := by
  rw [piece470_0_eq]
  rfl
#print axioms section470_eq
end InitECandidate.Proofs.BackendStages.BytePieces
