import InitECandidate.Proofs.BackendStages.BytePiecesData682
import InitECandidate.Proofs.BackendStages.BytePiecesData683
import InitECandidate.Bytes148
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate148_eq : InitECandidate.bytes148 = [piece682_1, piece683_0].flatten := by
  rw [piece682_1_eq, piece683_0_eq]
  rfl
#print axioms candidate148_eq
end InitECandidate.Proofs.BackendStages.BytePieces
