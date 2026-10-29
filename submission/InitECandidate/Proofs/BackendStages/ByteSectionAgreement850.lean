import InitECandidate.Proofs.BackendStages.BytesData850
import InitECandidate.Proofs.BackendStages.BytePiecesData850
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section850_eq : ByteData.bytes850 = [piece850_0, piece850_1, piece850_2].flatten := by
  rw [piece850_0_eq, piece850_1_eq, piece850_2_eq]
  rfl
#print axioms section850_eq
end InitECandidate.Proofs.BackendStages.BytePieces
