import InitECandidate.Proofs.BackendStages.BytesData240
import InitECandidate.Proofs.BackendStages.BytePiecesData240
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section240_eq : ByteData.bytes240 = [piece240_0, piece240_1].flatten := by
  rw [piece240_0_eq, piece240_1_eq]
  rfl
#print axioms section240_eq
end InitECandidate.Proofs.BackendStages.BytePieces
