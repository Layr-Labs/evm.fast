import InitECandidate.Proofs.BackendStages.BytesData607
import InitECandidate.Proofs.BackendStages.BytePiecesData607
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section607_eq : ByteData.bytes607 = [piece607_0].flatten := by
  rw [piece607_0_eq]
  rfl
#print axioms section607_eq
end InitECandidate.Proofs.BackendStages.BytePieces
