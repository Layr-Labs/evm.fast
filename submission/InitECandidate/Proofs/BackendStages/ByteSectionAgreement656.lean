import InitECandidate.Proofs.BackendStages.BytesData656
import InitECandidate.Proofs.BackendStages.BytePiecesData656
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section656_eq : ByteData.bytes656 = [piece656_0].flatten := by
  rw [piece656_0_eq]
  rfl
#print axioms section656_eq
end InitECandidate.Proofs.BackendStages.BytePieces
