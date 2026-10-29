import InitECandidate.Proofs.BackendStages.BytesData80
import InitECandidate.Proofs.BackendStages.BytePiecesData80
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section80_eq : ByteData.bytes80 = [piece80_0].flatten := by
  rw [piece80_0_eq]
  rfl
#print axioms section80_eq
end InitECandidate.Proofs.BackendStages.BytePieces
