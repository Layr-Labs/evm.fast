import InitECandidate.Proofs.BackendStages.BytePiecesData265
import InitECandidate.Proofs.BackendStages.BytePiecesData266
import InitECandidate.Proofs.BackendStages.BytePiecesData267
import InitECandidate.Proofs.BackendStages.BytePiecesData268
import InitECandidate.Proofs.BackendStages.BytePiecesData269
import InitECandidate.Proofs.BackendStages.BytePiecesData270
import InitECandidate.Proofs.BackendStages.BytePiecesData271
import InitECandidate.Proofs.BackendStages.BytePiecesData272
import InitECandidate.Bytes050
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate050_eq : InitECandidate.bytes050 = [piece265_1, piece266_0, piece267_0, piece268_0, piece269_0, piece270_0, piece271_0, piece272_0].flatten := by
  rw [piece265_1_eq, piece266_0_eq, piece267_0_eq, piece268_0_eq, piece269_0_eq, piece270_0_eq, piece271_0_eq, piece272_0_eq]
  rfl
#print axioms candidate050_eq
end InitECandidate.Proofs.BackendStages.BytePieces
