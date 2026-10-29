import InitECandidate.Proofs.BackendStages.BytesData851
import InitECandidate.Proofs.BackendStages.BytePiecesData851
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section851_eq : ByteData.bytes851 = [piece851_0].flatten := by
  rw [piece851_0_eq]
  rfl
#print axioms section851_eq
end InitECandidate.Proofs.BackendStages.BytePieces
