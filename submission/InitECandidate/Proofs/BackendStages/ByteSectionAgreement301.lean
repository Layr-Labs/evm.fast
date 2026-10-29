import InitECandidate.Proofs.BackendStages.BytesData301
import InitECandidate.Proofs.BackendStages.BytePiecesData301
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section301_eq : ByteData.bytes301 = [piece301_0].flatten := by
  rw [piece301_0_eq]
  rfl
#print axioms section301_eq
end InitECandidate.Proofs.BackendStages.BytePieces
