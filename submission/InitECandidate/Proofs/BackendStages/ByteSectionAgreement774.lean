import InitECandidate.Proofs.BackendStages.BytesData774
import InitECandidate.Proofs.BackendStages.BytePiecesData774
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section774_eq : ByteData.bytes774 = [piece774_0].flatten := by
  rw [piece774_0_eq]
  rfl
#print axioms section774_eq
end InitECandidate.Proofs.BackendStages.BytePieces
