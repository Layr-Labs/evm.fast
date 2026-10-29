import InitECandidate.Proofs.BackendStages.BytesData683
import InitECandidate.Proofs.BackendStages.BytePiecesData683
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section683_eq : ByteData.bytes683 = [piece683_0, piece683_1, piece683_2].flatten := by
  rw [piece683_0_eq, piece683_1_eq, piece683_2_eq]
  rfl
#print axioms section683_eq
end InitECandidate.Proofs.BackendStages.BytePieces
