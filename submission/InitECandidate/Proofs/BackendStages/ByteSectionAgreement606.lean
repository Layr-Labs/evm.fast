import InitECandidate.Proofs.BackendStages.BytesData606
import InitECandidate.Proofs.BackendStages.BytePiecesData606
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section606_eq : ByteData.bytes606 = [piece606_0, piece606_1].flatten := by
  rw [piece606_0_eq, piece606_1_eq]
  rfl
#print axioms section606_eq
end InitECandidate.Proofs.BackendStages.BytePieces
