import InitECandidate.Proofs.BackendStages.BytesData363
import InitECandidate.Proofs.BackendStages.BytePiecesData363
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section363_eq : ByteData.bytes363 = [piece363_0].flatten := by
  rw [piece363_0_eq]
  rfl
#print axioms section363_eq
end InitECandidate.Proofs.BackendStages.BytePieces
