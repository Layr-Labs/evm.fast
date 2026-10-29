import InitECandidate.Proofs.BackendStages.BytePiecesData569
import InitECandidate.Proofs.BackendStages.BytePiecesData570
import InitECandidate.Proofs.BackendStages.BytePiecesData571
import InitECandidate.Proofs.BackendStages.BytePiecesData572
import InitECandidate.Proofs.BackendStages.BytePiecesData573
import InitECandidate.Proofs.BackendStages.BytePiecesData574
import InitECandidate.Bytes104
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate104_eq : InitECandidate.bytes104 = [piece569_1, piece570_0, piece571_0, piece572_0, piece573_0, piece574_0].flatten := by
  rw [piece569_1_eq, piece570_0_eq, piece571_0_eq, piece572_0_eq, piece573_0_eq, piece574_0_eq]
  rfl
#print axioms candidate104_eq
end InitECandidate.Proofs.BackendStages.BytePieces
