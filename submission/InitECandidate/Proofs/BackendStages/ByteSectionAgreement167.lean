import InitECandidate.Proofs.BackendStages.BytesData167
import InitECandidate.Proofs.BackendStages.BytePiecesData167
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section167_eq : ByteData.bytes167 = [piece167_0, piece167_1].flatten := by
  rw [piece167_0_eq, piece167_1_eq]
  rfl
#print axioms section167_eq
end InitECandidate.Proofs.BackendStages.BytePieces
