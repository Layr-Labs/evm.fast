import InitECandidate.Proofs.BackendStages.BytePiecesData283
import InitECandidate.Proofs.BackendStages.BytePiecesData284
import InitECandidate.Proofs.BackendStages.BytePiecesData285
import InitECandidate.Proofs.BackendStages.BytePiecesData286
import InitECandidate.Proofs.BackendStages.BytePiecesData287
import InitECandidate.Bytes055
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate055_eq : InitECandidate.bytes055 = [piece283_1, piece284_0, piece285_0, piece286_0, piece287_0].flatten := by
  rw [piece283_1_eq, piece284_0_eq, piece285_0_eq, piece286_0_eq, piece287_0_eq]
  rfl
#print axioms candidate055_eq
end InitECandidate.Proofs.BackendStages.BytePieces
