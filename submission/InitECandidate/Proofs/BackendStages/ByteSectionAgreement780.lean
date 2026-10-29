import InitECandidate.Proofs.BackendStages.BytesData780
import InitECandidate.Proofs.BackendStages.BytePiecesData780
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section780_eq : ByteData.bytes780 = [piece780_0].flatten := by
  rw [piece780_0_eq]
  rfl
#print axioms section780_eq
end InitECandidate.Proofs.BackendStages.BytePieces
