import InitECandidate.Proofs.BackendStages.BytesData802
import InitECandidate.Proofs.BackendStages.BytePiecesData802
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section802_eq : ByteData.bytes802 = [piece802_0].flatten := by
  rw [piece802_0_eq]
  rfl
#print axioms section802_eq
end InitECandidate.Proofs.BackendStages.BytePieces
