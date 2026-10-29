import InitECandidate.Proofs.BackendStages.BytePiecesData200
import InitECandidate.Proofs.BackendStages.BytePiecesData201
import InitECandidate.Proofs.BackendStages.BytePiecesData202
import InitECandidate.Proofs.BackendStages.BytePiecesData203
import InitECandidate.Proofs.BackendStages.BytePiecesData204
import InitECandidate.Proofs.BackendStages.BytePiecesData205
import InitECandidate.Proofs.BackendStages.BytePiecesData206
import InitECandidate.Bytes026
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate026_eq : InitECandidate.bytes026 = [piece200_1, piece201_0, piece202_0, piece203_0, piece204_0, piece205_0, piece206_0].flatten := by
  rw [piece200_1_eq, piece201_0_eq, piece202_0_eq, piece203_0_eq, piece204_0_eq, piece205_0_eq, piece206_0_eq]
  rfl
#print axioms candidate026_eq
end InitECandidate.Proofs.BackendStages.BytePieces
