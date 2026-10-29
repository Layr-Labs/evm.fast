import InitECandidate.Proofs.BackendStages.BytesData393
import InitECandidate.Proofs.BackendStages.BytePiecesData393
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section393_eq : ByteData.bytes393 = [piece393_0].flatten := by
  rw [piece393_0_eq]
  rfl
#print axioms section393_eq
end InitECandidate.Proofs.BackendStages.BytePieces
