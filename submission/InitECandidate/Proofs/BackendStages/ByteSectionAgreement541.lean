import InitECandidate.Proofs.BackendStages.BytesData541
import InitECandidate.Proofs.BackendStages.BytePiecesData541
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section541_eq : ByteData.bytes541 = [piece541_0].flatten := by
  rw [piece541_0_eq]
  rfl
#print axioms section541_eq
end InitECandidate.Proofs.BackendStages.BytePieces
