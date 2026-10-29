import InitECandidate.Proofs.BackendStages.BytesData211
import InitECandidate.Proofs.BackendStages.BytePiecesData211
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section211_eq : ByteData.bytes211 = [piece211_0].flatten := by
  rw [piece211_0_eq]
  rfl
#print axioms section211_eq
end InitECandidate.Proofs.BackendStages.BytePieces
