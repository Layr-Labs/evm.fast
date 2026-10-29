import InitECandidate.Proofs.BackendStages.BytesData368
import InitECandidate.Proofs.BackendStages.BytePiecesData368
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section368_eq : ByteData.bytes368 = [piece368_0].flatten := by
  rw [piece368_0_eq]
  rfl
#print axioms section368_eq
end InitECandidate.Proofs.BackendStages.BytePieces
