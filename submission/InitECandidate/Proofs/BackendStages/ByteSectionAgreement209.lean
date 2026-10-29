import InitECandidate.Proofs.BackendStages.BytesData209
import InitECandidate.Proofs.BackendStages.BytePiecesData209
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section209_eq : ByteData.bytes209 = [piece209_0].flatten := by
  rw [piece209_0_eq]
  rfl
#print axioms section209_eq
end InitECandidate.Proofs.BackendStages.BytePieces
