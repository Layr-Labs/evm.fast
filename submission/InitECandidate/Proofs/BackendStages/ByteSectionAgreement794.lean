import InitECandidate.Proofs.BackendStages.BytesData794
import InitECandidate.Proofs.BackendStages.BytePiecesData794
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section794_eq : ByteData.bytes794 = [piece794_0].flatten := by
  rw [piece794_0_eq]
  rfl
#print axioms section794_eq
end InitECandidate.Proofs.BackendStages.BytePieces
