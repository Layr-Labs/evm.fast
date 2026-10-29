import InitECandidate.Proofs.BackendStages.BytePiecesData251
import InitECandidate.Proofs.BackendStages.BytePiecesData252
import InitECandidate.Proofs.BackendStages.BytePiecesData253
import InitECandidate.Proofs.BackendStages.BytePiecesData254
import InitECandidate.Bytes045
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate045_eq : InitECandidate.bytes045 = [piece251_1, piece252_0, piece253_0, piece254_0].flatten := by
  rw [piece251_1_eq, piece252_0_eq, piece253_0_eq, piece254_0_eq]
  rfl
#print axioms candidate045_eq
end InitECandidate.Proofs.BackendStages.BytePieces
