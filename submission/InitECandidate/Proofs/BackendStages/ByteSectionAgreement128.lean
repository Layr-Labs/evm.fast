import InitECandidate.Proofs.BackendStages.BytesData128
import InitECandidate.Proofs.BackendStages.BytePiecesData128
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section128_eq : ByteData.bytes128 = [piece128_0].flatten := by
  rw [piece128_0_eq]
  rfl
#print axioms section128_eq
end InitECandidate.Proofs.BackendStages.BytePieces
