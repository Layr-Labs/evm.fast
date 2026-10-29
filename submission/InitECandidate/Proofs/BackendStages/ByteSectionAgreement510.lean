import InitECandidate.Proofs.BackendStages.BytesData510
import InitECandidate.Proofs.BackendStages.BytePiecesData510
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section510_eq : ByteData.bytes510 = [piece510_0].flatten := by
  rw [piece510_0_eq]
  rfl
#print axioms section510_eq
end InitECandidate.Proofs.BackendStages.BytePieces
