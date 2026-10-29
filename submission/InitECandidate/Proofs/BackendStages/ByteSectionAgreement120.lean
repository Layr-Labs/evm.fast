import InitECandidate.Proofs.BackendStages.BytesData120
import InitECandidate.Proofs.BackendStages.BytePiecesData120
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section120_eq : ByteData.bytes120 = [piece120_0].flatten := by
  rw [piece120_0_eq]
  rfl
#print axioms section120_eq
end InitECandidate.Proofs.BackendStages.BytePieces
