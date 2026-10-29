import InitECandidate.Proofs.BackendStages.BytePiecesData590
import InitECandidate.Proofs.BackendStages.BytePiecesData591
import InitECandidate.Proofs.BackendStages.BytePiecesData592
import InitECandidate.Proofs.BackendStages.BytePiecesData593
import InitECandidate.Bytes109
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate109_eq : InitECandidate.bytes109 = [piece590_1, piece591_0, piece592_0, piece593_0].flatten := by
  rw [piece590_1_eq, piece591_0_eq, piece592_0_eq, piece593_0_eq]
  rfl
#print axioms candidate109_eq
end InitECandidate.Proofs.BackendStages.BytePieces
