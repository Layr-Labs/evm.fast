import InitECandidate.Proofs.BackendStages.BytesData518
import InitECandidate.Proofs.BackendStages.BytePiecesData518
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section518_eq : ByteData.bytes518 = [piece518_0].flatten := by
  rw [piece518_0_eq]
  rfl
#print axioms section518_eq
end InitECandidate.Proofs.BackendStages.BytePieces
