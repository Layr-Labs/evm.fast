import InitECandidate.Proofs.BackendStages.BytesData365
import InitECandidate.Proofs.BackendStages.BytePiecesData365
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section365_eq : ByteData.bytes365 = [piece365_0, piece365_1].flatten := by
  rw [piece365_0_eq, piece365_1_eq]
  rfl
#print axioms section365_eq
end InitECandidate.Proofs.BackendStages.BytePieces
