import InitECandidate.Proofs.BackendStages.BytesData372
import InitECandidate.Proofs.BackendStages.BytePiecesData372
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section372_eq : ByteData.bytes372 = [piece372_0].flatten := by
  rw [piece372_0_eq]
  rfl
#print axioms section372_eq
end InitECandidate.Proofs.BackendStages.BytePieces
