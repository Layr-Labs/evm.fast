import InitECandidate.Proofs.BackendStages.BytePiecesData234
import InitECandidate.Proofs.BackendStages.BytePiecesData235
import InitECandidate.Bytes041
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate041_eq : InitECandidate.bytes041 = [piece234_2, piece235_0].flatten := by
  rw [piece234_2_eq, piece235_0_eq]
  rfl
#print axioms candidate041_eq
end InitECandidate.Proofs.BackendStages.BytePieces
