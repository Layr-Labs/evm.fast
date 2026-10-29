import InitECandidate.Proofs.BackendStages.BytesData848
import InitECandidate.Proofs.BackendStages.BytePiecesData848
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section848_eq : ByteData.bytes848 = [piece848_0, piece848_1, piece848_2].flatten := by
  rw [piece848_0_eq, piece848_1_eq, piece848_2_eq]
  rfl
#print axioms section848_eq
end InitECandidate.Proofs.BackendStages.BytePieces
