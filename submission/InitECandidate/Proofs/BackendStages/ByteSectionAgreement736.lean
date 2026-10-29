import InitECandidate.Proofs.BackendStages.BytesData736
import InitECandidate.Proofs.BackendStages.BytePiecesData736
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section736_eq : ByteData.bytes736 = [piece736_0].flatten := by
  rw [piece736_0_eq]
  rfl
#print axioms section736_eq
end InitECandidate.Proofs.BackendStages.BytePieces
