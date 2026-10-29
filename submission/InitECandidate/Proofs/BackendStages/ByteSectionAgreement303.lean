import InitECandidate.Proofs.BackendStages.BytesData303
import InitECandidate.Proofs.BackendStages.BytePiecesData303
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section303_eq : ByteData.bytes303 = [piece303_0].flatten := by
  rw [piece303_0_eq]
  rfl
#print axioms section303_eq
end InitECandidate.Proofs.BackendStages.BytePieces
