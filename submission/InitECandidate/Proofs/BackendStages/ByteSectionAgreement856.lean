import InitECandidate.Proofs.BackendStages.BytesData856
import InitECandidate.Proofs.BackendStages.BytePiecesData856
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section856_eq : ByteData.bytes856 = [piece856_0].flatten := by
  rw [piece856_0_eq]
  rfl
#print axioms section856_eq
end InitECandidate.Proofs.BackendStages.BytePieces
