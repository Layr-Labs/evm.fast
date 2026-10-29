import InitECandidate.Proofs.BackendStages.BytesData836
import InitECandidate.Proofs.BackendStages.BytePiecesData836
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section836_eq : ByteData.bytes836 = [piece836_0, piece836_1].flatten := by
  rw [piece836_0_eq, piece836_1_eq]
  rfl
#print axioms section836_eq
end InitECandidate.Proofs.BackendStages.BytePieces
