import InitECandidate.Proofs.BackendStages.BytesData807
import InitECandidate.Proofs.BackendStages.BytePiecesData807
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section807_eq : ByteData.bytes807 = [piece807_0].flatten := by
  rw [piece807_0_eq]
  rfl
#print axioms section807_eq
end InitECandidate.Proofs.BackendStages.BytePieces
