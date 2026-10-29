import InitECandidate.Proofs.BackendStages.BytePiecesData508
import InitECandidate.Proofs.BackendStages.BytePiecesData509
import InitECandidate.Proofs.BackendStages.BytePiecesData510
import InitECandidate.Proofs.BackendStages.BytePiecesData511
import InitECandidate.Proofs.BackendStages.BytePiecesData512
import InitECandidate.Proofs.BackendStages.BytePiecesData513
import InitECandidate.Proofs.BackendStages.BytePiecesData514
import InitECandidate.Bytes092
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate092_eq : InitECandidate.bytes092 = [piece508_1, piece509_0, piece510_0, piece511_0, piece512_0, piece513_0, piece514_0].flatten := by
  rw [piece508_1_eq, piece509_0_eq, piece510_0_eq, piece511_0_eq, piece512_0_eq, piece513_0_eq, piece514_0_eq]
  rfl
#print axioms candidate092_eq
end InitECandidate.Proofs.BackendStages.BytePieces
