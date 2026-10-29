import InitECandidate.Proofs.BackendStages.BytesData127
import InitECandidate.Proofs.BackendStages.BytePiecesData127
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section127_eq : ByteData.bytes127 = [piece127_0, piece127_1].flatten := by
  rw [piece127_0_eq, piece127_1_eq]
  rfl
#print axioms section127_eq
end InitECandidate.Proofs.BackendStages.BytePieces
