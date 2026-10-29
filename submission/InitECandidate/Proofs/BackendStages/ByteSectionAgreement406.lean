import InitECandidate.Proofs.BackendStages.BytesData406
import InitECandidate.Proofs.BackendStages.BytePiecesData406
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section406_eq : ByteData.bytes406 = [piece406_0, piece406_1].flatten := by
  rw [piece406_0_eq, piece406_1_eq]
  rfl
#print axioms section406_eq
end InitECandidate.Proofs.BackendStages.BytePieces
