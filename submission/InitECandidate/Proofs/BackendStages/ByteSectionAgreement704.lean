import InitECandidate.Proofs.BackendStages.BytesData704
import InitECandidate.Proofs.BackendStages.BytePiecesData704
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section704_eq : ByteData.bytes704 = [piece704_0, piece704_1, piece704_2, piece704_3, piece704_4, piece704_5, piece704_6, piece704_7, piece704_8, piece704_9].flatten := by
  rw [piece704_0_eq, piece704_1_eq, piece704_2_eq, piece704_3_eq, piece704_4_eq, piece704_5_eq, piece704_6_eq, piece704_7_eq, piece704_8_eq, piece704_9_eq]
  rfl
#print axioms section704_eq
end InitECandidate.Proofs.BackendStages.BytePieces
