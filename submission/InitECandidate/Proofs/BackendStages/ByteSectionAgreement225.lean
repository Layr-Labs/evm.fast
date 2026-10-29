import InitECandidate.Proofs.BackendStages.BytesData225
import InitECandidate.Proofs.BackendStages.BytePiecesData225
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section225_eq : ByteData.bytes225 = [piece225_0, piece225_1, piece225_2].flatten := by
  rw [piece225_0_eq, piece225_1_eq, piece225_2_eq]
  rfl
#print axioms section225_eq
end InitECandidate.Proofs.BackendStages.BytePieces
