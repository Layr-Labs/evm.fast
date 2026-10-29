import InitECandidate.Proofs.BackendStages.BytesData391
import InitECandidate.Proofs.BackendStages.BytePiecesData391
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section391_eq : ByteData.bytes391 = [piece391_0].flatten := by
  rw [piece391_0_eq]
  rfl
#print axioms section391_eq
end InitECandidate.Proofs.BackendStages.BytePieces
