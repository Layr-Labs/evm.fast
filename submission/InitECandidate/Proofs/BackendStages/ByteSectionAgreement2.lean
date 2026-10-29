import InitECandidate.Proofs.BackendStages.BytesData2
import InitECandidate.Proofs.BackendStages.BytePiecesData2
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section2_eq : ByteData.bytes2 = [piece2_0].flatten := by
  rw [piece2_0_eq]
  rfl
#print axioms section2_eq
end InitECandidate.Proofs.BackendStages.BytePieces
