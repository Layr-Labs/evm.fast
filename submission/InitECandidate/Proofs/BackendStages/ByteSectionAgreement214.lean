import InitECandidate.Proofs.BackendStages.BytesData214
import InitECandidate.Proofs.BackendStages.BytePiecesData214
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section214_eq : ByteData.bytes214 = [piece214_0].flatten := by
  rw [piece214_0_eq]
  rfl
#print axioms section214_eq
end InitECandidate.Proofs.BackendStages.BytePieces
