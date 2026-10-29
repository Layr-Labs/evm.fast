import InitECandidate.Proofs.BackendStages.BytesData841
import InitECandidate.Proofs.BackendStages.BytePiecesData841
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section841_eq : ByteData.bytes841 = [piece841_0].flatten := by
  rw [piece841_0_eq]
  rfl
#print axioms section841_eq
end InitECandidate.Proofs.BackendStages.BytePieces
