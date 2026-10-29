import InitECandidate.Proofs.BackendStages.BytesData219
import InitECandidate.Proofs.BackendStages.BytePiecesData219
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section219_eq : ByteData.bytes219 = [piece219_0].flatten := by
  rw [piece219_0_eq]
  rfl
#print axioms section219_eq
end InitECandidate.Proofs.BackendStages.BytePieces
