import InitECandidate.Proofs.BackendStages.BytePiecesData763
import InitECandidate.Proofs.BackendStages.BytePiecesData764
import InitECandidate.Proofs.BackendStages.BytePiecesData765
import InitECandidate.Bytes186
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate186_eq : InitECandidate.bytes186 = [piece763_1, piece764_0, piece765_0].flatten := by
  rw [piece763_1_eq, piece764_0_eq, piece765_0_eq]
  rfl
#print axioms candidate186_eq
end InitECandidate.Proofs.BackendStages.BytePieces
