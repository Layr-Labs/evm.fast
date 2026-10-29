import InitECandidate.Proofs.BackendStages.BytesData165
import InitECandidate.Proofs.BackendStages.BytePiecesData165
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section165_eq : ByteData.bytes165 = [piece165_0].flatten := by
  rw [piece165_0_eq]
  rfl
#print axioms section165_eq
end InitECandidate.Proofs.BackendStages.BytePieces
