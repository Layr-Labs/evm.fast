import InitECandidate.Proofs.BackendStages.BytesData279
import InitECandidate.Proofs.BackendStages.BytePiecesData279
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section279_eq : ByteData.bytes279 = [piece279_0, piece279_1].flatten := by
  rw [piece279_0_eq, piece279_1_eq]
  rfl
#print axioms section279_eq
end InitECandidate.Proofs.BackendStages.BytePieces
