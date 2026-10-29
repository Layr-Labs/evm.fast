import InitECandidate.Proofs.BackendStages.BytesData843
import InitECandidate.Proofs.BackendStages.BytePiecesData843
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section843_eq : ByteData.bytes843 = [piece843_0].flatten := by
  rw [piece843_0_eq]
  rfl
#print axioms section843_eq
end InitECandidate.Proofs.BackendStages.BytePieces
