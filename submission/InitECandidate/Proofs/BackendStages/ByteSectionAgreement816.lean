import InitECandidate.Proofs.BackendStages.BytesData816
import InitECandidate.Proofs.BackendStages.BytePiecesData816
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section816_eq : ByteData.bytes816 = [piece816_0].flatten := by
  rw [piece816_0_eq]
  rfl
#print axioms section816_eq
end InitECandidate.Proofs.BackendStages.BytePieces
