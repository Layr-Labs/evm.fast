import InitECandidate.Proofs.BackendStages.BytesData186
import InitECandidate.Proofs.BackendStages.BytePiecesData186
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section186_eq : ByteData.bytes186 = [piece186_0].flatten := by
  rw [piece186_0_eq]
  rfl
#print axioms section186_eq
end InitECandidate.Proofs.BackendStages.BytePieces
