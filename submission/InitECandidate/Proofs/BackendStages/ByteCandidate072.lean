import InitECandidate.Proofs.BackendStages.BytePiecesData384
import InitECandidate.Proofs.BackendStages.BytePiecesData385
import InitECandidate.Proofs.BackendStages.BytePiecesData386
import InitECandidate.Proofs.BackendStages.BytePiecesData387
import InitECandidate.Proofs.BackendStages.BytePiecesData388
import InitECandidate.Bytes072
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate072_eq : InitECandidate.bytes072 = [piece384_1, piece385_0, piece386_0, piece387_0, piece388_0].flatten := by
  rw [piece384_1_eq, piece385_0_eq, piece386_0_eq, piece387_0_eq, piece388_0_eq]
  rfl
#print axioms candidate072_eq
end InitECandidate.Proofs.BackendStages.BytePieces
