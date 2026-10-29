import InitECandidate.Proofs.BackendStages.BytesData99
import InitECandidate.Proofs.BackendStages.BytePiecesData99
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section99_eq : ByteData.bytes99 = [piece99_0].flatten := by
  rw [piece99_0_eq]
  rfl
#print axioms section99_eq
end InitECandidate.Proofs.BackendStages.BytePieces
