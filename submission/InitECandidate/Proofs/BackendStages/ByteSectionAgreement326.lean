import InitECandidate.Proofs.BackendStages.BytesData326
import InitECandidate.Proofs.BackendStages.BytePiecesData326
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section326_eq : ByteData.bytes326 = [piece326_0].flatten := by
  rw [piece326_0_eq]
  rfl
#print axioms section326_eq
end InitECandidate.Proofs.BackendStages.BytePieces
