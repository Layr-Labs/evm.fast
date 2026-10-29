import InitECandidate.Proofs.BackendStages.BytePiecesData192
import InitECandidate.Proofs.BackendStages.BytePiecesData193
import InitECandidate.Proofs.BackendStages.BytePiecesData194
import InitECandidate.Proofs.BackendStages.BytePiecesData195
import InitECandidate.Proofs.BackendStages.BytePiecesData196
import InitECandidate.Proofs.BackendStages.BytePiecesData197
import InitECandidate.Proofs.BackendStages.BytePiecesData198
import InitECandidate.Proofs.BackendStages.BytePiecesData199
import InitECandidate.Proofs.BackendStages.BytePiecesData200
import InitECandidate.Bytes025
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate025_eq : InitECandidate.bytes025 = [piece192_1, piece193_0, piece194_0, piece195_0, piece196_0, piece197_0, piece198_0, piece199_0, piece200_0].flatten := by
  rw [piece192_1_eq, piece193_0_eq, piece194_0_eq, piece195_0_eq, piece196_0_eq, piece197_0_eq, piece198_0_eq, piece199_0_eq, piece200_0_eq]
  rfl
#print axioms candidate025_eq
end InitECandidate.Proofs.BackendStages.BytePieces
