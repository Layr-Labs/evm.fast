import InitECandidate.Proofs.BackendStages.BytePiecesData142
import InitECandidate.Proofs.BackendStages.BytePiecesData143
import InitECandidate.Proofs.BackendStages.BytePiecesData144
import InitECandidate.Proofs.BackendStages.BytePiecesData145
import InitECandidate.Proofs.BackendStages.BytePiecesData146
import InitECandidate.Proofs.BackendStages.BytePiecesData147
import InitECandidate.Proofs.BackendStages.BytePiecesData148
import InitECandidate.Bytes007
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate007_eq : InitECandidate.bytes007 = [piece142_1, piece143_0, piece144_0, piece145_0, piece146_0, piece147_0, piece148_0].flatten := by
  rw [piece142_1_eq, piece143_0_eq, piece144_0_eq, piece145_0_eq, piece146_0_eq, piece147_0_eq, piece148_0_eq]
  rfl
#print axioms candidate007_eq
end InitECandidate.Proofs.BackendStages.BytePieces
