import InitECandidate.Proofs.BackendStages.BytesData402
import InitECandidate.Proofs.BackendStages.BytePiecesData402
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section402_eq : ByteData.bytes402 = [piece402_0].flatten := by
  rw [piece402_0_eq]
  rfl
#print axioms section402_eq
end InitECandidate.Proofs.BackendStages.BytePieces
