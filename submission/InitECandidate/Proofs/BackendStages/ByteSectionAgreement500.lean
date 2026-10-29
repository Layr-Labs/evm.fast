import InitECandidate.Proofs.BackendStages.BytesData500
import InitECandidate.Proofs.BackendStages.BytePiecesData500
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section500_eq : ByteData.bytes500 = [piece500_0].flatten := by
  rw [piece500_0_eq]
  rfl
#print axioms section500_eq
end InitECandidate.Proofs.BackendStages.BytePieces
