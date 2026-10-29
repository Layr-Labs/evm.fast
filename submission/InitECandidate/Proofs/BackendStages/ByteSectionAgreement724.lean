import InitECandidate.Proofs.BackendStages.BytesData724
import InitECandidate.Proofs.BackendStages.BytePiecesData724
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section724_eq : ByteData.bytes724 = [piece724_0].flatten := by
  rw [piece724_0_eq]
  rfl
#print axioms section724_eq
end InitECandidate.Proofs.BackendStages.BytePieces
