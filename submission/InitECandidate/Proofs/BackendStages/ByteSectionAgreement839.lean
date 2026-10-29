import InitECandidate.Proofs.BackendStages.BytesData839
import InitECandidate.Proofs.BackendStages.BytePiecesData839
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section839_eq : ByteData.bytes839 = [piece839_0].flatten := by
  rw [piece839_0_eq]
  rfl
#print axioms section839_eq
end InitECandidate.Proofs.BackendStages.BytePieces
