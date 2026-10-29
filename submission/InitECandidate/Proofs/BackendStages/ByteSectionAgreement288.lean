import InitECandidate.Proofs.BackendStages.BytesData288
import InitECandidate.Proofs.BackendStages.BytePiecesData288
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section288_eq : ByteData.bytes288 = [piece288_0].flatten := by
  rw [piece288_0_eq]
  rfl
#print axioms section288_eq
end InitECandidate.Proofs.BackendStages.BytePieces
