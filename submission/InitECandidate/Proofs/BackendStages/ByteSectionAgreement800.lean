import InitECandidate.Proofs.BackendStages.BytesData800
import InitECandidate.Proofs.BackendStages.BytePiecesData800
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section800_eq : ByteData.bytes800 = [piece800_0, piece800_1].flatten := by
  rw [piece800_0_eq, piece800_1_eq]
  rfl
#print axioms section800_eq
end InitECandidate.Proofs.BackendStages.BytePieces
