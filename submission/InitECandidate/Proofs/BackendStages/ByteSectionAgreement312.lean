import InitECandidate.Proofs.BackendStages.BytesData312
import InitECandidate.Proofs.BackendStages.BytePiecesData312
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section312_eq : ByteData.bytes312 = [piece312_0].flatten := by
  rw [piece312_0_eq]
  rfl
#print axioms section312_eq
end InitECandidate.Proofs.BackendStages.BytePieces
