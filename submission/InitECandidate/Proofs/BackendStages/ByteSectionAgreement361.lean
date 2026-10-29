import InitECandidate.Proofs.BackendStages.BytesData361
import InitECandidate.Proofs.BackendStages.BytePiecesData361
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section361_eq : ByteData.bytes361 = [piece361_0, piece361_1].flatten := by
  rw [piece361_0_eq, piece361_1_eq]
  rfl
#print axioms section361_eq
end InitECandidate.Proofs.BackendStages.BytePieces
