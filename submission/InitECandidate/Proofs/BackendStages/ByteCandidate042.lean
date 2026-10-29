import InitECandidate.Proofs.BackendStages.BytePiecesData235
import InitECandidate.Proofs.BackendStages.BytePiecesData236
import InitECandidate.Proofs.BackendStages.BytePiecesData237
import InitECandidate.Proofs.BackendStages.BytePiecesData238
import InitECandidate.Proofs.BackendStages.BytePiecesData239
import InitECandidate.Proofs.BackendStages.BytePiecesData240
import InitECandidate.Bytes042
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate042_eq : InitECandidate.bytes042 = [piece235_1, piece236_0, piece237_0, piece238_0, piece239_0, piece240_0].flatten := by
  rw [piece235_1_eq, piece236_0_eq, piece237_0_eq, piece238_0_eq, piece239_0_eq, piece240_0_eq]
  rfl
#print axioms candidate042_eq
end InitECandidate.Proofs.BackendStages.BytePieces
