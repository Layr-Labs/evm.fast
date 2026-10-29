import InitECandidate.Proofs.BackendStages.BytesData280
import InitECandidate.Proofs.BackendStages.BytePiecesData280
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section280_eq : ByteData.bytes280 = [piece280_0].flatten := by
  rw [piece280_0_eq]
  rfl
#print axioms section280_eq
end InitECandidate.Proofs.BackendStages.BytePieces
