import InitECandidate.Proofs.BackendStages.BytePiecesData333
import InitECandidate.Proofs.BackendStages.BytePiecesData334
import InitECandidate.Proofs.BackendStages.BytePiecesData335
import InitECandidate.Proofs.BackendStages.BytePiecesData336
import InitECandidate.Bytes064
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate064_eq : InitECandidate.bytes064 = [piece333_1, piece334_0, piece335_0, piece336_0].flatten := by
  rw [piece333_1_eq, piece334_0_eq, piece335_0_eq, piece336_0_eq]
  rfl
#print axioms candidate064_eq
end InitECandidate.Proofs.BackendStages.BytePieces
