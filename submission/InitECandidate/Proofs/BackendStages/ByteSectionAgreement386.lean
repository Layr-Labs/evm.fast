import InitECandidate.Proofs.BackendStages.BytesData386
import InitECandidate.Proofs.BackendStages.BytePiecesData386
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section386_eq : ByteData.bytes386 = [piece386_0].flatten := by
  rw [piece386_0_eq]
  rfl
#print axioms section386_eq
end InitECandidate.Proofs.BackendStages.BytePieces
