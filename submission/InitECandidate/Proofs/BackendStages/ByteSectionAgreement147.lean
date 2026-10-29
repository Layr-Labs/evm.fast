import InitECandidate.Proofs.BackendStages.BytesData147
import InitECandidate.Proofs.BackendStages.BytePiecesData147
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section147_eq : ByteData.bytes147 = [piece147_0].flatten := by
  rw [piece147_0_eq]
  rfl
#print axioms section147_eq
end InitECandidate.Proofs.BackendStages.BytePieces
