import InitECandidate.Proofs.BackendStages.BytesData832
import InitECandidate.Proofs.BackendStages.BytePiecesData832
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section832_eq : ByteData.bytes832 = [piece832_0].flatten := by
  rw [piece832_0_eq]
  rfl
#print axioms section832_eq
end InitECandidate.Proofs.BackendStages.BytePieces
