import InitECandidate.Proofs.BackendStages.BytesData65
import InitECandidate.Proofs.BackendStages.BytePiecesData65
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section65_eq : ByteData.bytes65 = [piece65_0, piece65_1].flatten := by
  rw [piece65_0_eq, piece65_1_eq]
  rfl
#print axioms section65_eq
end InitECandidate.Proofs.BackendStages.BytePieces
