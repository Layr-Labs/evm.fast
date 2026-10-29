import InitECandidate.Proofs.BackendStages.BytePiecesData365
import InitECandidate.Proofs.BackendStages.BytePiecesData366
import InitECandidate.Proofs.BackendStages.BytePiecesData367
import InitECandidate.Proofs.BackendStages.BytePiecesData368
import InitECandidate.Proofs.BackendStages.BytePiecesData369
import InitECandidate.Proofs.BackendStages.BytePiecesData370
import InitECandidate.Bytes069
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate069_eq : InitECandidate.bytes069 = [piece365_1, piece366_0, piece367_0, piece368_0, piece369_0, piece370_0].flatten := by
  rw [piece365_1_eq, piece366_0_eq, piece367_0_eq, piece368_0_eq, piece369_0_eq, piece370_0_eq]
  rfl
#print axioms candidate069_eq
end InitECandidate.Proofs.BackendStages.BytePieces
