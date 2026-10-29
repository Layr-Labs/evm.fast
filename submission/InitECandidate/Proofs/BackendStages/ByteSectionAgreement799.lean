import InitECandidate.Proofs.BackendStages.BytesData799
import InitECandidate.Proofs.BackendStages.BytePiecesData799
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section799_eq : ByteData.bytes799 = [piece799_0].flatten := by
  rw [piece799_0_eq]
  rfl
#print axioms section799_eq
end InitECandidate.Proofs.BackendStages.BytePieces
