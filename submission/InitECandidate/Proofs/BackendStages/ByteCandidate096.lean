import InitECandidate.Proofs.BackendStages.BytePiecesData530
import InitECandidate.Proofs.BackendStages.BytePiecesData531
import InitECandidate.Proofs.BackendStages.BytePiecesData532
import InitECandidate.Proofs.BackendStages.BytePiecesData533
import InitECandidate.Proofs.BackendStages.BytePiecesData534
import InitECandidate.Bytes096
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate096_eq : InitECandidate.bytes096 = [piece530_1, piece531_0, piece532_0, piece533_0, piece534_0].flatten := by
  rw [piece530_1_eq, piece531_0_eq, piece532_0_eq, piece533_0_eq, piece534_0_eq]
  rfl
#print axioms candidate096_eq
end InitECandidate.Proofs.BackendStages.BytePieces
