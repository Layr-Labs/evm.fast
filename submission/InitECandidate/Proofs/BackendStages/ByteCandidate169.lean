import InitECandidate.Proofs.BackendStages.BytePiecesData704
import InitECandidate.Bytes169
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate169_eq : InitECandidate.bytes169 = [piece704_7].flatten := by
  rw [piece704_7_eq]
  rfl
#print axioms candidate169_eq
end InitECandidate.Proofs.BackendStages.BytePieces
