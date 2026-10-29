import InitECandidate.Proofs.BackendStages.BytesData468
import InitECandidate.Proofs.BackendStages.BytePiecesData468
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section468_eq : ByteData.bytes468 = [piece468_0].flatten := by
  rw [piece468_0_eq]
  rfl
#print axioms section468_eq
end InitECandidate.Proofs.BackendStages.BytePieces
