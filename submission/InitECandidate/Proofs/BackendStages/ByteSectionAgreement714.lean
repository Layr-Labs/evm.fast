import InitECandidate.Proofs.BackendStages.BytesData714
import InitECandidate.Proofs.BackendStages.BytePiecesData714
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section714_eq : ByteData.bytes714 = [piece714_0, piece714_1, piece714_2, piece714_3, piece714_4].flatten := by
  rw [piece714_0_eq, piece714_1_eq, piece714_2_eq, piece714_3_eq, piece714_4_eq]
  rfl
#print axioms section714_eq
end InitECandidate.Proofs.BackendStages.BytePieces
