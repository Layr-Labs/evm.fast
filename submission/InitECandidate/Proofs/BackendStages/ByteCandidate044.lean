import InitECandidate.Proofs.BackendStages.BytePiecesData248
import InitECandidate.Proofs.BackendStages.BytePiecesData249
import InitECandidate.Proofs.BackendStages.BytePiecesData250
import InitECandidate.Proofs.BackendStages.BytePiecesData251
import InitECandidate.Bytes044
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate044_eq : InitECandidate.bytes044 = [piece248_1, piece249_0, piece250_0, piece251_0].flatten := by
  rw [piece248_1_eq, piece249_0_eq, piece250_0_eq, piece251_0_eq]
  rfl
#print axioms candidate044_eq
end InitECandidate.Proofs.BackendStages.BytePieces
