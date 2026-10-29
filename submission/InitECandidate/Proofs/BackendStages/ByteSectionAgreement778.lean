import InitECandidate.Proofs.BackendStages.BytesData778
import InitECandidate.Proofs.BackendStages.BytePiecesData778
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section778_eq : ByteData.bytes778 = [piece778_0].flatten := by
  rw [piece778_0_eq]
  rfl
#print axioms section778_eq
end InitECandidate.Proofs.BackendStages.BytePieces
