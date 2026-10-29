import InitECandidate.Proofs.BackendStages.BytesData459
import InitECandidate.Proofs.BackendStages.BytePiecesData459
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section459_eq : ByteData.bytes459 = [piece459_0, piece459_1, piece459_2, piece459_3].flatten := by
  rw [piece459_0_eq, piece459_1_eq, piece459_2_eq, piece459_3_eq]
  rfl
#print axioms section459_eq
end InitECandidate.Proofs.BackendStages.BytePieces
