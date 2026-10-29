import InitECandidate.Proofs.BackendStages.BytesData660
import InitECandidate.Proofs.BackendStages.BytePiecesData660
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section660_eq : ByteData.bytes660 = [piece660_0].flatten := by
  rw [piece660_0_eq]
  rfl
#print axioms section660_eq
end InitECandidate.Proofs.BackendStages.BytePieces
