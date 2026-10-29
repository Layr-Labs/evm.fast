import InitECandidate.Proofs.BackendStages.BytesData379
import InitECandidate.Proofs.BackendStages.BytePiecesData379
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section379_eq : ByteData.bytes379 = [piece379_0].flatten := by
  rw [piece379_0_eq]
  rfl
#print axioms section379_eq
end InitECandidate.Proofs.BackendStages.BytePieces
