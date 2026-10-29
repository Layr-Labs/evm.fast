import InitECandidate.Proofs.BackendStages.BytesData483
import InitECandidate.Proofs.BackendStages.BytePiecesData483
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section483_eq : ByteData.bytes483 = [piece483_0].flatten := by
  rw [piece483_0_eq]
  rfl
#print axioms section483_eq
end InitECandidate.Proofs.BackendStages.BytePieces
