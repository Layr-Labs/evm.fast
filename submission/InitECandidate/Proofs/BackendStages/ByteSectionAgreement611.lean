import InitECandidate.Proofs.BackendStages.BytesData611
import InitECandidate.Proofs.BackendStages.BytePiecesData611
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section611_eq : ByteData.bytes611 = [piece611_0, piece611_1].flatten := by
  rw [piece611_0_eq, piece611_1_eq]
  rfl
#print axioms section611_eq
end InitECandidate.Proofs.BackendStages.BytePieces
