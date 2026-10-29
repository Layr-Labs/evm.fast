import InitECandidate.Proofs.BackendStages.BytesData766
import InitECandidate.Proofs.BackendStages.BytePiecesData766
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section766_eq : ByteData.bytes766 = [piece766_0].flatten := by
  rw [piece766_0_eq]
  rfl
#print axioms section766_eq
end InitECandidate.Proofs.BackendStages.BytePieces
