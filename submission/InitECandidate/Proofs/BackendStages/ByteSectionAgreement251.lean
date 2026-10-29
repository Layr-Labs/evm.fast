import InitECandidate.Proofs.BackendStages.BytesData251
import InitECandidate.Proofs.BackendStages.BytePiecesData251
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section251_eq : ByteData.bytes251 = [piece251_0, piece251_1].flatten := by
  rw [piece251_0_eq, piece251_1_eq]
  rfl
#print axioms section251_eq
end InitECandidate.Proofs.BackendStages.BytePieces
