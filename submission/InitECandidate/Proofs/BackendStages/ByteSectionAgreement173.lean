import InitECandidate.Proofs.BackendStages.BytesData173
import InitECandidate.Proofs.BackendStages.BytePiecesData173
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section173_eq : ByteData.bytes173 = [piece173_0].flatten := by
  rw [piece173_0_eq]
  rfl
#print axioms section173_eq
end InitECandidate.Proofs.BackendStages.BytePieces
