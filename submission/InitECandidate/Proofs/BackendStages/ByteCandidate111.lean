import InitECandidate.Proofs.BackendStages.BytePiecesData594
import InitECandidate.Proofs.BackendStages.BytePiecesData595
import InitECandidate.Bytes111
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate111_eq : InitECandidate.bytes111 = [piece594_1, piece595_0].flatten := by
  rw [piece594_1_eq, piece595_0_eq]
  rfl
#print axioms candidate111_eq
end InitECandidate.Proofs.BackendStages.BytePieces
