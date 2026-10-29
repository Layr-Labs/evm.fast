import InitECandidate.Proofs.BackendStages.BytesData706
import InitECandidate.Proofs.BackendStages.BytePiecesData706
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section706_eq : ByteData.bytes706 = [piece706_0].flatten := by
  rw [piece706_0_eq]
  rfl
#print axioms section706_eq
end InitECandidate.Proofs.BackendStages.BytePieces
