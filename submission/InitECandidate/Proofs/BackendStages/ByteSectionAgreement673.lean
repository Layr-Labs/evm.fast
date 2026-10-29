import InitECandidate.Proofs.BackendStages.BytesData673
import InitECandidate.Proofs.BackendStages.BytePiecesData673
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section673_eq : ByteData.bytes673 = [piece673_0].flatten := by
  rw [piece673_0_eq]
  rfl
#print axioms section673_eq
end InitECandidate.Proofs.BackendStages.BytePieces
