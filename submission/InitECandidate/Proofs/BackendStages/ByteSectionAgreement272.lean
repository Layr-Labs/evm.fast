import InitECandidate.Proofs.BackendStages.BytesData272
import InitECandidate.Proofs.BackendStages.BytePiecesData272
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section272_eq : ByteData.bytes272 = [piece272_0, piece272_1].flatten := by
  rw [piece272_0_eq, piece272_1_eq]
  rfl
#print axioms section272_eq
end InitECandidate.Proofs.BackendStages.BytePieces
