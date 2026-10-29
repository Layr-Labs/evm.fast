import InitECandidate.Proofs.BackendStages.BytePiecesData276
import InitECandidate.Proofs.BackendStages.BytePiecesData277
import InitECandidate.Proofs.BackendStages.BytePiecesData278
import InitECandidate.Proofs.BackendStages.BytePiecesData279
import InitECandidate.Bytes053
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate053_eq : InitECandidate.bytes053 = [piece276_1, piece277_0, piece278_0, piece279_0].flatten := by
  rw [piece276_1_eq, piece277_0_eq, piece278_0_eq, piece279_0_eq]
  rfl
#print axioms candidate053_eq
end InitECandidate.Proofs.BackendStages.BytePieces
