import InitECandidate.Proofs.BackendStages.BytesData797
import InitECandidate.Proofs.BackendStages.BytePiecesData797
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section797_eq : ByteData.bytes797 = [piece797_0, piece797_1].flatten := by
  rw [piece797_0_eq, piece797_1_eq]
  rfl
#print axioms section797_eq
end InitECandidate.Proofs.BackendStages.BytePieces
