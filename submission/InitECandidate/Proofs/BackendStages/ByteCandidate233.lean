import InitECandidate.Proofs.BackendStages.BytePiecesData863
import InitECandidate.Bytes233
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate233_eq : InitECandidate.bytes233 = [piece863_2].flatten := by
  rw [piece863_2_eq]
  rfl
#print axioms candidate233_eq
end InitECandidate.Proofs.BackendStages.BytePieces
