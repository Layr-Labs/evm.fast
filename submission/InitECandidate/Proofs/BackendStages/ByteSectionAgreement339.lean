import InitECandidate.Proofs.BackendStages.BytesData339
import InitECandidate.Proofs.BackendStages.BytePiecesData339
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section339_eq : ByteData.bytes339 = [piece339_0].flatten := by
  rw [piece339_0_eq]
  rfl
#print axioms section339_eq
end InitECandidate.Proofs.BackendStages.BytePieces
