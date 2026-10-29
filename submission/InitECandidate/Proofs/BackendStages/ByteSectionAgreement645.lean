import InitECandidate.Proofs.BackendStages.BytesData645
import InitECandidate.Proofs.BackendStages.BytePiecesData645
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section645_eq : ByteData.bytes645 = [piece645_0, piece645_1, piece645_2].flatten := by
  rw [piece645_0_eq, piece645_1_eq, piece645_2_eq]
  rfl
#print axioms section645_eq
end InitECandidate.Proofs.BackendStages.BytePieces
