import InitECandidate.Proofs.BackendStages.BytesData712
import InitECandidate.Proofs.BackendStages.BytePiecesData712
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section712_eq : ByteData.bytes712 = [piece712_0, piece712_1].flatten := by
  rw [piece712_0_eq, piece712_1_eq]
  rfl
#print axioms section712_eq
end InitECandidate.Proofs.BackendStages.BytePieces
