import InitECandidate.Proofs.BackendStages.BytesData862
import InitECandidate.Proofs.BackendStages.BytePiecesData862
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section862_eq : ByteData.bytes862 = [piece862_0, piece862_1].flatten := by
  rw [piece862_0_eq, piece862_1_eq]
  rfl
#print axioms section862_eq
end InitECandidate.Proofs.BackendStages.BytePieces
