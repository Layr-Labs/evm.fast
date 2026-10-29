import InitECandidate.Proofs.BackendStages.BytesData89
import InitECandidate.Proofs.BackendStages.BytePiecesData89
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section89_eq : ByteData.bytes89 = [piece89_0].flatten := by
  rw [piece89_0_eq]
  rfl
#print axioms section89_eq
end InitECandidate.Proofs.BackendStages.BytePieces
