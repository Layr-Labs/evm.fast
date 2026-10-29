import InitECandidate.Proofs.BackendStages.BytesData810
import InitECandidate.Proofs.BackendStages.BytePiecesData810
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section810_eq : ByteData.bytes810 = [piece810_0].flatten := by
  rw [piece810_0_eq]
  rfl
#print axioms section810_eq
end InitECandidate.Proofs.BackendStages.BytePieces
