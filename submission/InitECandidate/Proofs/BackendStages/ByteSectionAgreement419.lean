import InitECandidate.Proofs.BackendStages.BytesData419
import InitECandidate.Proofs.BackendStages.BytePiecesData419
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section419_eq : ByteData.bytes419 = [piece419_0].flatten := by
  rw [piece419_0_eq]
  rfl
#print axioms section419_eq
end InitECandidate.Proofs.BackendStages.BytePieces
