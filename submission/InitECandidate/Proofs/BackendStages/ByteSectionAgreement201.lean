import InitECandidate.Proofs.BackendStages.BytesData201
import InitECandidate.Proofs.BackendStages.BytePiecesData201
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section201_eq : ByteData.bytes201 = [piece201_0].flatten := by
  rw [piece201_0_eq]
  rfl
#print axioms section201_eq
end InitECandidate.Proofs.BackendStages.BytePieces
