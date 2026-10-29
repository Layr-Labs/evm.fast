import InitECandidate.Proofs.BackendStages.BytePiecesData151
import InitECandidate.Proofs.BackendStages.BytePiecesData152
import InitECandidate.Proofs.BackendStages.BytePiecesData153
import InitECandidate.Proofs.BackendStages.BytePiecesData154
import InitECandidate.Bytes012
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate012_eq : InitECandidate.bytes012 = [piece151_4, piece152_0, piece153_0, piece154_0].flatten := by
  rw [piece151_4_eq, piece152_0_eq, piece153_0_eq, piece154_0_eq]
  rfl
#print axioms candidate012_eq
end InitECandidate.Proofs.BackendStages.BytePieces
