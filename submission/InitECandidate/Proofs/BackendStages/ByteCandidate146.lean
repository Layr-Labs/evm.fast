import InitECandidate.Proofs.BackendStages.BytePiecesData667
import InitECandidate.Proofs.BackendStages.BytePiecesData668
import InitECandidate.Proofs.BackendStages.BytePiecesData669
import InitECandidate.Proofs.BackendStages.BytePiecesData670
import InitECandidate.Bytes146
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate146_eq : InitECandidate.bytes146 = [piece667_1, piece668_0, piece669_0, piece670_0].flatten := by
  rw [piece667_1_eq, piece668_0_eq, piece669_0_eq, piece670_0_eq]
  rfl
#print axioms candidate146_eq
end InitECandidate.Proofs.BackendStages.BytePieces
