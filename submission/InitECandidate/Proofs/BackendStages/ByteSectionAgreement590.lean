import InitECandidate.Proofs.BackendStages.BytesData590
import InitECandidate.Proofs.BackendStages.BytePiecesData590
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section590_eq : ByteData.bytes590 = [piece590_0, piece590_1].flatten := by
  rw [piece590_0_eq, piece590_1_eq]
  rfl
#print axioms section590_eq
end InitECandidate.Proofs.BackendStages.BytePieces
