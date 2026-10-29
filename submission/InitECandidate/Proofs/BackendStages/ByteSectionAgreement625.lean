import InitECandidate.Proofs.BackendStages.BytesData625
import InitECandidate.Proofs.BackendStages.BytePiecesData625
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section625_eq : ByteData.bytes625 = [piece625_0].flatten := by
  rw [piece625_0_eq]
  rfl
#print axioms section625_eq
end InitECandidate.Proofs.BackendStages.BytePieces
