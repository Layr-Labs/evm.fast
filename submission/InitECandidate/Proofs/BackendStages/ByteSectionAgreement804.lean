import InitECandidate.Proofs.BackendStages.BytesData804
import InitECandidate.Proofs.BackendStages.BytePiecesData804
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section804_eq : ByteData.bytes804 = [piece804_0].flatten := by
  rw [piece804_0_eq]
  rfl
#print axioms section804_eq
end InitECandidate.Proofs.BackendStages.BytePieces
