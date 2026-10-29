import InitECandidate.Proofs.BackendStages.BytePiecesData148
import InitECandidate.Proofs.BackendStages.BytePiecesData149
import InitECandidate.Proofs.BackendStages.BytePiecesData150
import InitECandidate.Proofs.BackendStages.BytePiecesData151
import InitECandidate.Bytes008
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate008_eq : InitECandidate.bytes008 = [piece148_1, piece149_0, piece150_0, piece151_0].flatten := by
  rw [piece148_1_eq, piece149_0_eq, piece150_0_eq, piece151_0_eq]
  rfl
#print axioms candidate008_eq
end InitECandidate.Proofs.BackendStages.BytePieces
