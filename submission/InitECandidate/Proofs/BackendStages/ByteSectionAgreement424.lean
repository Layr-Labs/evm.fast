import InitECandidate.Proofs.BackendStages.BytesData424
import InitECandidate.Proofs.BackendStages.BytePiecesData424
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section424_eq : ByteData.bytes424 = [piece424_0].flatten := by
  rw [piece424_0_eq]
  rfl
#print axioms section424_eq
end InitECandidate.Proofs.BackendStages.BytePieces
