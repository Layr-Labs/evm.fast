import InitECandidate.Proofs.BackendStages.BytesData104
import InitECandidate.Proofs.BackendStages.BytePiecesData104
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section104_eq : ByteData.bytes104 = [piece104_0].flatten := by
  rw [piece104_0_eq]
  rfl
#print axioms section104_eq
end InitECandidate.Proofs.BackendStages.BytePieces
