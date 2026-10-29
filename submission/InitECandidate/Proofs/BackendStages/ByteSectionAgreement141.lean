import InitECandidate.Proofs.BackendStages.BytesData141
import InitECandidate.Proofs.BackendStages.BytePiecesData141
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section141_eq : ByteData.bytes141 = [piece141_0].flatten := by
  rw [piece141_0_eq]
  rfl
#print axioms section141_eq
end InitECandidate.Proofs.BackendStages.BytePieces
