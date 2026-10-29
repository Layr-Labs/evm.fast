import InitECandidate.Proofs.BackendStages.BytesData409
import InitECandidate.Proofs.BackendStages.BytePiecesData409
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section409_eq : ByteData.bytes409 = [piece409_0].flatten := by
  rw [piece409_0_eq]
  rfl
#print axioms section409_eq
end InitECandidate.Proofs.BackendStages.BytePieces
