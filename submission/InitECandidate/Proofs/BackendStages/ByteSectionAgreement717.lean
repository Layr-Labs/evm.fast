import InitECandidate.Proofs.BackendStages.BytesData717
import InitECandidate.Proofs.BackendStages.BytePiecesData717
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section717_eq : ByteData.bytes717 = [piece717_0].flatten := by
  rw [piece717_0_eq]
  rfl
#print axioms section717_eq
end InitECandidate.Proofs.BackendStages.BytePieces
