import InitECandidate.Proofs.BackendStages.BytesData484
import InitECandidate.Proofs.BackendStages.BytePiecesData484
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section484_eq : ByteData.bytes484 = [piece484_0].flatten := by
  rw [piece484_0_eq]
  rfl
#print axioms section484_eq
end InitECandidate.Proofs.BackendStages.BytePieces
