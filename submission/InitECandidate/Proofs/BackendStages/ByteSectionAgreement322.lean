import InitECandidate.Proofs.BackendStages.BytesData322
import InitECandidate.Proofs.BackendStages.BytePiecesData322
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section322_eq : ByteData.bytes322 = [piece322_0, piece322_1].flatten := by
  rw [piece322_0_eq, piece322_1_eq]
  rfl
#print axioms section322_eq
end InitECandidate.Proofs.BackendStages.BytePieces
