import InitECandidate.Proofs.BackendStages.BytesData355
import InitECandidate.Proofs.BackendStages.BytePiecesData355
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section355_eq : ByteData.bytes355 = [piece355_0].flatten := by
  rw [piece355_0_eq]
  rfl
#print axioms section355_eq
end InitECandidate.Proofs.BackendStages.BytePieces
