import InitECandidate.Proofs.BackendStages.BytePiecesData684
import InitECandidate.Proofs.BackendStages.BytePiecesData685
import InitECandidate.Bytes151
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate151_eq : InitECandidate.bytes151 = [piece684_1, piece685_0].flatten := by
  rw [piece684_1_eq, piece685_0_eq]
  rfl
#print axioms candidate151_eq
end InitECandidate.Proofs.BackendStages.BytePieces
