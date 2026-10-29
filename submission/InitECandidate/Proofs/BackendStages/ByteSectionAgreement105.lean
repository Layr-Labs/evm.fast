import InitECandidate.Proofs.BackendStages.BytesData105
import InitECandidate.Proofs.BackendStages.BytePiecesData105
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section105_eq : ByteData.bytes105 = [piece105_0].flatten := by
  rw [piece105_0_eq]
  rfl
#print axioms section105_eq
end InitECandidate.Proofs.BackendStages.BytePieces
