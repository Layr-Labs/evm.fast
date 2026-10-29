import InitECandidate.Proofs.BackendStages.BytesData676
import InitECandidate.Proofs.BackendStages.BytePiecesData676
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section676_eq : ByteData.bytes676 = [piece676_0].flatten := by
  rw [piece676_0_eq]
  rfl
#print axioms section676_eq
end InitECandidate.Proofs.BackendStages.BytePieces
