import InitECandidate.Proofs.BackendStages.BytesData647
import InitECandidate.Proofs.BackendStages.BytePiecesData647
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section647_eq : ByteData.bytes647 = [piece647_0].flatten := by
  rw [piece647_0_eq]
  rfl
#print axioms section647_eq
end InitECandidate.Proofs.BackendStages.BytePieces
