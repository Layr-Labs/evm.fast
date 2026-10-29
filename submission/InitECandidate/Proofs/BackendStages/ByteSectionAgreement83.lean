import InitECandidate.Proofs.BackendStages.BytesData83
import InitECandidate.Proofs.BackendStages.BytePiecesData83
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section83_eq : ByteData.bytes83 = [piece83_0].flatten := by
  rw [piece83_0_eq]
  rfl
#print axioms section83_eq
end InitECandidate.Proofs.BackendStages.BytePieces
