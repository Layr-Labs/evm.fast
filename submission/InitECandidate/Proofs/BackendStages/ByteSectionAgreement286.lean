import InitECandidate.Proofs.BackendStages.BytesData286
import InitECandidate.Proofs.BackendStages.BytePiecesData286
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section286_eq : ByteData.bytes286 = [piece286_0].flatten := by
  rw [piece286_0_eq]
  rfl
#print axioms section286_eq
end InitECandidate.Proofs.BackendStages.BytePieces
