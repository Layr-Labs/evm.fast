import InitECandidate.Proofs.BackendStages.BytesData154
import InitECandidate.Proofs.BackendStages.BytePiecesData154
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section154_eq : ByteData.bytes154 = [piece154_0, piece154_1, piece154_2, piece154_3, piece154_4, piece154_5, piece154_6, piece154_7, piece154_8].flatten := by
  rw [piece154_0_eq, piece154_1_eq, piece154_2_eq, piece154_3_eq, piece154_4_eq, piece154_5_eq, piece154_6_eq, piece154_7_eq, piece154_8_eq]
  rfl
#print axioms section154_eq
end InitECandidate.Proofs.BackendStages.BytePieces
