import InitECandidate.Proofs.BackendStages.BytesData129
import InitECandidate.Proofs.BackendStages.BytePiecesData129
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section129_eq : ByteData.bytes129 = [piece129_0].flatten := by
  rw [piece129_0_eq]
  rfl
#print axioms section129_eq
end InitECandidate.Proofs.BackendStages.BytePieces
