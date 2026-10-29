import InitECandidate.Proofs.BackendStages.BytesData152
import InitECandidate.Proofs.BackendStages.BytePiecesData152
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section152_eq : ByteData.bytes152 = [piece152_0].flatten := by
  rw [piece152_0_eq]
  rfl
#print axioms section152_eq
end InitECandidate.Proofs.BackendStages.BytePieces
