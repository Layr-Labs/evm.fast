import InitECandidate.Proofs.BackendStages.BytesData373
import InitECandidate.Proofs.BackendStages.BytePiecesData373
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section373_eq : ByteData.bytes373 = [piece373_0].flatten := by
  rw [piece373_0_eq]
  rfl
#print axioms section373_eq
end InitECandidate.Proofs.BackendStages.BytePieces
