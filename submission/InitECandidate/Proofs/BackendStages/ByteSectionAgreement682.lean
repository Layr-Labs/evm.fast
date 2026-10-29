import InitECandidate.Proofs.BackendStages.BytesData682
import InitECandidate.Proofs.BackendStages.BytePiecesData682
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section682_eq : ByteData.bytes682 = [piece682_0, piece682_1].flatten := by
  rw [piece682_0_eq, piece682_1_eq]
  rfl
#print axioms section682_eq
end InitECandidate.Proofs.BackendStages.BytePieces
