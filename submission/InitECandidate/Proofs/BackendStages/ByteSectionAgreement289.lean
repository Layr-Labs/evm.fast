import InitECandidate.Proofs.BackendStages.BytesData289
import InitECandidate.Proofs.BackendStages.BytePiecesData289
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section289_eq : ByteData.bytes289 = [piece289_0].flatten := by
  rw [piece289_0_eq]
  rfl
#print axioms section289_eq
end InitECandidate.Proofs.BackendStages.BytePieces
