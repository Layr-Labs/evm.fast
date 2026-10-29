import InitECandidate.Proofs.BackendStages.BytesData168
import InitECandidate.Proofs.BackendStages.BytePiecesData168
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section168_eq : ByteData.bytes168 = [piece168_0].flatten := by
  rw [piece168_0_eq]
  rfl
#print axioms section168_eq
end InitECandidate.Proofs.BackendStages.BytePieces
