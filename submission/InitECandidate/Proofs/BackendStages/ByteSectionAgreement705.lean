import InitECandidate.Proofs.BackendStages.BytesData705
import InitECandidate.Proofs.BackendStages.BytePiecesData705
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section705_eq : ByteData.bytes705 = [piece705_0].flatten := by
  rw [piece705_0_eq]
  rfl
#print axioms section705_eq
end InitECandidate.Proofs.BackendStages.BytePieces
