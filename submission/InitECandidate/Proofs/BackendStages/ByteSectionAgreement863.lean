import InitECandidate.Proofs.BackendStages.BytesData863
import InitECandidate.Proofs.BackendStages.BytePiecesData863
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section863_eq : ByteData.bytes863 = [piece863_0, piece863_1, piece863_2, piece863_3, piece863_4].flatten := by
  rw [piece863_0_eq, piece863_1_eq, piece863_2_eq, piece863_3_eq, piece863_4_eq]
  rfl
#print axioms section863_eq
end InitECandidate.Proofs.BackendStages.BytePieces
