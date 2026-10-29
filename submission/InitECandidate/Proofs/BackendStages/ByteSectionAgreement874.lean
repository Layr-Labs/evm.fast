import InitECandidate.Proofs.BackendStages.BytesData874
import InitECandidate.Proofs.BackendStages.BytePiecesData874
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section874_eq : ByteData.bytes874 = [piece874_0].flatten := by
  rw [piece874_0_eq]
  rfl
#print axioms section874_eq
end InitECandidate.Proofs.BackendStages.BytePieces
