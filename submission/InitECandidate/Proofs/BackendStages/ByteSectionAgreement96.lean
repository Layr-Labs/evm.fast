import InitECandidate.Proofs.BackendStages.BytesData96
import InitECandidate.Proofs.BackendStages.BytePiecesData96
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section96_eq : ByteData.bytes96 = [piece96_0].flatten := by
  rw [piece96_0_eq]
  rfl
#print axioms section96_eq
end InitECandidate.Proofs.BackendStages.BytePieces
