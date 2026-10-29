import InitECandidate.Proofs.BackendStages.BytesData762
import InitECandidate.Proofs.BackendStages.BytePiecesData762
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section762_eq : ByteData.bytes762 = [piece762_0].flatten := by
  rw [piece762_0_eq]
  rfl
#print axioms section762_eq
end InitECandidate.Proofs.BackendStages.BytePieces
