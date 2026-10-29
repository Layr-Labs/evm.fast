import InitECandidate.Proofs.BackendStages.BytesData222
import InitECandidate.Proofs.BackendStages.BytePiecesData222
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section222_eq : ByteData.bytes222 = [piece222_0].flatten := by
  rw [piece222_0_eq]
  rfl
#print axioms section222_eq
end InitECandidate.Proofs.BackendStages.BytePieces
