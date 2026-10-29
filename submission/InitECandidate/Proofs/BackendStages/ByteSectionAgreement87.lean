import InitECandidate.Proofs.BackendStages.BytesData87
import InitECandidate.Proofs.BackendStages.BytePiecesData87
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section87_eq : ByteData.bytes87 = [piece87_0].flatten := by
  rw [piece87_0_eq]
  rfl
#print axioms section87_eq
end InitECandidate.Proofs.BackendStages.BytePieces
