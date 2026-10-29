import InitECandidate.Proofs.BackendStages.BytesData6
import InitECandidate.Proofs.BackendStages.BytePiecesData6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section6_eq : ByteData.bytes6 = [piece6_0].flatten := by
  rw [piece6_0_eq]
  rfl
#print axioms section6_eq
end InitECandidate.Proofs.BackendStages.BytePieces
