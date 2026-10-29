import InitECandidate.Proofs.BackendStages.BytesData763
import InitECandidate.Proofs.BackendStages.BytePiecesData763
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section763_eq : ByteData.bytes763 = [piece763_0, piece763_1].flatten := by
  rw [piece763_0_eq, piece763_1_eq]
  rfl
#print axioms section763_eq
end InitECandidate.Proofs.BackendStages.BytePieces
