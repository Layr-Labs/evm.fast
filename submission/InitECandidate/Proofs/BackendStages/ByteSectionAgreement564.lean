import InitECandidate.Proofs.BackendStages.BytesData564
import InitECandidate.Proofs.BackendStages.BytePiecesData564
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section564_eq : ByteData.bytes564 = [piece564_0].flatten := by
  rw [piece564_0_eq]
  rfl
#print axioms section564_eq
end InitECandidate.Proofs.BackendStages.BytePieces
