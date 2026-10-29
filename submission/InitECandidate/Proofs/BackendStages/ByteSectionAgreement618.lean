import InitECandidate.Proofs.BackendStages.BytesData618
import InitECandidate.Proofs.BackendStages.BytePiecesData618
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section618_eq : ByteData.bytes618 = [piece618_0].flatten := by
  rw [piece618_0_eq]
  rfl
#print axioms section618_eq
end InitECandidate.Proofs.BackendStages.BytePieces
