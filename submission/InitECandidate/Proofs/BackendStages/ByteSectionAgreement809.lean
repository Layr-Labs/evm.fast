import InitECandidate.Proofs.BackendStages.BytesData809
import InitECandidate.Proofs.BackendStages.BytePiecesData809
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section809_eq : ByteData.bytes809 = [piece809_0].flatten := by
  rw [piece809_0_eq]
  rfl
#print axioms section809_eq
end InitECandidate.Proofs.BackendStages.BytePieces
