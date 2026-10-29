import InitECandidate.Proofs.BackendStages.BytesData407
import InitECandidate.Proofs.BackendStages.BytePiecesData407
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section407_eq : ByteData.bytes407 = [piece407_0].flatten := by
  rw [piece407_0_eq]
  rfl
#print axioms section407_eq
end InitECandidate.Proofs.BackendStages.BytePieces
