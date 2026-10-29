import InitECandidate.Proofs.BackendStages.BytesData823
import InitECandidate.Proofs.BackendStages.BytePiecesData823
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section823_eq : ByteData.bytes823 = [piece823_0].flatten := by
  rw [piece823_0_eq]
  rfl
#print axioms section823_eq
end InitECandidate.Proofs.BackendStages.BytePieces
