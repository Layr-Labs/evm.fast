import InitECandidate.Proofs.BackendStages.BytesData781
import InitECandidate.Proofs.BackendStages.BytePiecesData781
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section781_eq : ByteData.bytes781 = [piece781_0].flatten := by
  rw [piece781_0_eq]
  rfl
#print axioms section781_eq
end InitECandidate.Proofs.BackendStages.BytePieces
