import InitECandidate.Proofs.BackendStages.BytePiecesData704
import InitECandidate.Bytes164
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate164_eq : InitECandidate.bytes164 = [piece704_2].flatten := by
  rw [piece704_2_eq]
  rfl
#print axioms candidate164_eq
end InitECandidate.Proofs.BackendStages.BytePieces
