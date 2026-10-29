import InitECandidate.Proofs.BackendStages.BytesData667
import InitECandidate.Proofs.BackendStages.BytePiecesData667
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section667_eq : ByteData.bytes667 = [piece667_0, piece667_1].flatten := by
  rw [piece667_0_eq, piece667_1_eq]
  rfl
#print axioms section667_eq
end InitECandidate.Proofs.BackendStages.BytePieces
