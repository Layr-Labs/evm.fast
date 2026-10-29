import InitECandidate.Proofs.BackendStages.BytePiecesData314
import InitECandidate.Proofs.BackendStages.BytePiecesData315
import InitECandidate.Proofs.BackendStages.BytePiecesData316
import InitECandidate.Proofs.BackendStages.BytePiecesData317
import InitECandidate.Bytes060
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate060_eq : InitECandidate.bytes060 = [piece314_1, piece315_0, piece316_0, piece317_0].flatten := by
  rw [piece314_1_eq, piece315_0_eq, piece316_0_eq, piece317_0_eq]
  rfl
#print axioms candidate060_eq
end InitECandidate.Proofs.BackendStages.BytePieces
