import InitECandidate.Proofs.BackendStages.BytesData144
import InitECandidate.Proofs.BackendStages.BytePiecesData144
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section144_eq : ByteData.bytes144 = [piece144_0].flatten := by
  rw [piece144_0_eq]
  rfl
#print axioms section144_eq
end InitECandidate.Proofs.BackendStages.BytePieces
