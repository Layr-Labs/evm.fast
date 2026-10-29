import InitECandidate.Proofs.BackendStages.BytesData627
import InitECandidate.Proofs.BackendStages.BytePiecesData627
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section627_eq : ByteData.bytes627 = [piece627_0, piece627_1].flatten := by
  rw [piece627_0_eq, piece627_1_eq]
  rfl
#print axioms section627_eq
end InitECandidate.Proofs.BackendStages.BytePieces
