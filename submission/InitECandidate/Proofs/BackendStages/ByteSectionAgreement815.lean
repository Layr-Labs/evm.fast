import InitECandidate.Proofs.BackendStages.BytesData815
import InitECandidate.Proofs.BackendStages.BytePiecesData815
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section815_eq : ByteData.bytes815 = [piece815_0].flatten := by
  rw [piece815_0_eq]
  rfl
#print axioms section815_eq
end InitECandidate.Proofs.BackendStages.BytePieces
