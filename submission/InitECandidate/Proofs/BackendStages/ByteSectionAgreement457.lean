import InitECandidate.Proofs.BackendStages.BytesData457
import InitECandidate.Proofs.BackendStages.BytePiecesData457
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section457_eq : ByteData.bytes457 = [piece457_0, piece457_1].flatten := by
  rw [piece457_0_eq, piece457_1_eq]
  rfl
#print axioms section457_eq
end InitECandidate.Proofs.BackendStages.BytePieces
