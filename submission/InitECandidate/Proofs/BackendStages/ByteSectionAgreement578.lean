import InitECandidate.Proofs.BackendStages.BytesData578
import InitECandidate.Proofs.BackendStages.BytePiecesData578
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section578_eq : ByteData.bytes578 = [piece578_0].flatten := by
  rw [piece578_0_eq]
  rfl
#print axioms section578_eq
end InitECandidate.Proofs.BackendStages.BytePieces
