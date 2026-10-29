import InitECandidate.Proofs.BackendStages.BytesData638
import InitECandidate.Proofs.BackendStages.BytePiecesData638
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section638_eq : ByteData.bytes638 = [piece638_0, piece638_1].flatten := by
  rw [piece638_0_eq, piece638_1_eq]
  rfl
#print axioms section638_eq
end InitECandidate.Proofs.BackendStages.BytePieces
