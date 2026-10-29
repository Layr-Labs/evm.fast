import InitECandidate.Proofs.BackendStages.BytesData842
import InitECandidate.Proofs.BackendStages.BytePiecesData842
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section842_eq : ByteData.bytes842 = [piece842_0].flatten := by
  rw [piece842_0_eq]
  rfl
#print axioms section842_eq
end InitECandidate.Proofs.BackendStages.BytePieces
