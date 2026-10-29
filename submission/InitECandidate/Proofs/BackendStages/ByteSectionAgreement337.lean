import InitECandidate.Proofs.BackendStages.BytesData337
import InitECandidate.Proofs.BackendStages.BytePiecesData337
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section337_eq : ByteData.bytes337 = [piece337_0].flatten := by
  rw [piece337_0_eq]
  rfl
#print axioms section337_eq
end InitECandidate.Proofs.BackendStages.BytePieces
