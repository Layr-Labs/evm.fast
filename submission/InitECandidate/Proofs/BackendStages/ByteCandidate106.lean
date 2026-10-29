import InitECandidate.Proofs.BackendStages.BytePiecesData580
import InitECandidate.Proofs.BackendStages.BytePiecesData581
import InitECandidate.Proofs.BackendStages.BytePiecesData582
import InitECandidate.Proofs.BackendStages.BytePiecesData583
import InitECandidate.Proofs.BackendStages.BytePiecesData584
import InitECandidate.Proofs.BackendStages.BytePiecesData585
import InitECandidate.Bytes106
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate106_eq : InitECandidate.bytes106 = [piece580_1, piece581_0, piece582_0, piece583_0, piece584_0, piece585_0].flatten := by
  rw [piece580_1_eq, piece581_0_eq, piece582_0_eq, piece583_0_eq, piece584_0_eq, piece585_0_eq]
  rfl
#print axioms candidate106_eq
end InitECandidate.Proofs.BackendStages.BytePieces
