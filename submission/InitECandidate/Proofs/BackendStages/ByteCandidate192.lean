import InitECandidate.Proofs.BackendStages.BytePiecesData773
import InitECandidate.Proofs.BackendStages.BytePiecesData774
import InitECandidate.Proofs.BackendStages.BytePiecesData775
import InitECandidate.Proofs.BackendStages.BytePiecesData776
import InitECandidate.Proofs.BackendStages.BytePiecesData777
import InitECandidate.Bytes192
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate192_eq : InitECandidate.bytes192 = [piece773_1, piece774_0, piece775_0, piece776_0, piece777_0].flatten := by
  rw [piece773_1_eq, piece774_0_eq, piece775_0_eq, piece776_0_eq, piece777_0_eq]
  rfl
#print axioms candidate192_eq
end InitECandidate.Proofs.BackendStages.BytePieces
