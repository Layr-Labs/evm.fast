import InitECandidate.Proofs.BackendStages.BytesData787
import InitECandidate.Proofs.BackendStages.BytePiecesData787
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section787_eq : ByteData.bytes787 = [piece787_0, piece787_1].flatten := by
  rw [piece787_0_eq, piece787_1_eq]
  rfl
#print axioms section787_eq
end InitECandidate.Proofs.BackendStages.BytePieces
