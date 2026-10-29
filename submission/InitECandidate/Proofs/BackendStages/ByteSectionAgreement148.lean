import InitECandidate.Proofs.BackendStages.BytesData148
import InitECandidate.Proofs.BackendStages.BytePiecesData148
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section148_eq : ByteData.bytes148 = [piece148_0, piece148_1].flatten := by
  rw [piece148_0_eq, piece148_1_eq]
  rfl
#print axioms section148_eq
end InitECandidate.Proofs.BackendStages.BytePieces
