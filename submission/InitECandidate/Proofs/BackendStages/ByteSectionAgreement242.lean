import InitECandidate.Proofs.BackendStages.BytesData242
import InitECandidate.Proofs.BackendStages.BytePiecesData242
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section242_eq : ByteData.bytes242 = [piece242_0].flatten := by
  rw [piece242_0_eq]
  rfl
#print axioms section242_eq
end InitECandidate.Proofs.BackendStages.BytePieces
