import InitECandidate.Proofs.BackendStages.BytesData569
import InitECandidate.Proofs.BackendStages.BytePiecesData569
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section569_eq : ByteData.bytes569 = [piece569_0, piece569_1].flatten := by
  rw [piece569_0_eq, piece569_1_eq]
  rfl
#print axioms section569_eq
end InitECandidate.Proofs.BackendStages.BytePieces
