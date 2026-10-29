import InitECandidate.Proofs.BackendStages.BytesData236
import InitECandidate.Proofs.BackendStages.BytePiecesData236
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section236_eq : ByteData.bytes236 = [piece236_0].flatten := by
  rw [piece236_0_eq]
  rfl
#print axioms section236_eq
end InitECandidate.Proofs.BackendStages.BytePieces
