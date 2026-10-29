import InitECandidate.Proofs.BackendStages.BytesData100
import InitECandidate.Proofs.BackendStages.BytePiecesData100
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section100_eq : ByteData.bytes100 = [piece100_0].flatten := by
  rw [piece100_0_eq]
  rfl
#print axioms section100_eq
end InitECandidate.Proofs.BackendStages.BytePieces
