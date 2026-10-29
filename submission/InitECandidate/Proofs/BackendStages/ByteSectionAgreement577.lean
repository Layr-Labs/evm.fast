import InitECandidate.Proofs.BackendStages.BytesData577
import InitECandidate.Proofs.BackendStages.BytePiecesData577
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section577_eq : ByteData.bytes577 = [piece577_0].flatten := by
  rw [piece577_0_eq]
  rfl
#print axioms section577_eq
end InitECandidate.Proofs.BackendStages.BytePieces
