import InitECandidate.Proofs.BackendStages.BytesData151
import InitECandidate.Proofs.BackendStages.BytePiecesData151
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section151_eq : ByteData.bytes151 = [piece151_0, piece151_1, piece151_2, piece151_3, piece151_4].flatten := by
  rw [piece151_0_eq, piece151_1_eq, piece151_2_eq, piece151_3_eq, piece151_4_eq]
  rfl
#print axioms section151_eq
end InitECandidate.Proofs.BackendStages.BytePieces
