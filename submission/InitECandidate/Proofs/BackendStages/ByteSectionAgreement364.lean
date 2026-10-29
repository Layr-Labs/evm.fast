import InitECandidate.Proofs.BackendStages.BytesData364
import InitECandidate.Proofs.BackendStages.BytePiecesData364
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section364_eq : ByteData.bytes364 = [piece364_0].flatten := by
  rw [piece364_0_eq]
  rfl
#print axioms section364_eq
end InitECandidate.Proofs.BackendStages.BytePieces
