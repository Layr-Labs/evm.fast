import InitECandidate.Proofs.BackendStages.BytesData697
import InitECandidate.Proofs.BackendStages.BytePiecesData697
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section697_eq : ByteData.bytes697 = [piece697_0, piece697_1].flatten := by
  rw [piece697_0_eq, piece697_1_eq]
  rfl
#print axioms section697_eq
end InitECandidate.Proofs.BackendStages.BytePieces
