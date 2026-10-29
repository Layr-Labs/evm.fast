import InitECandidate.Proofs.BackendStages.BytesData767
import InitECandidate.Proofs.BackendStages.BytePiecesData767
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section767_eq : ByteData.bytes767 = [piece767_0].flatten := by
  rw [piece767_0_eq]
  rfl
#print axioms section767_eq
end InitECandidate.Proofs.BackendStages.BytePieces
