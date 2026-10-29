import InitECandidate.Proofs.BackendStages.BytePiecesData606
import InitECandidate.Proofs.BackendStages.BytePiecesData607
import InitECandidate.Proofs.BackendStages.BytePiecesData608
import InitECandidate.Proofs.BackendStages.BytePiecesData609
import InitECandidate.Proofs.BackendStages.BytePiecesData610
import InitECandidate.Proofs.BackendStages.BytePiecesData611
import InitECandidate.Bytes117
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate117_eq : InitECandidate.bytes117 = [piece606_1, piece607_0, piece608_0, piece609_0, piece610_0, piece611_0].flatten := by
  rw [piece606_1_eq, piece607_0_eq, piece608_0_eq, piece609_0_eq, piece610_0_eq, piece611_0_eq]
  rfl
#print axioms candidate117_eq
end InitECandidate.Proofs.BackendStages.BytePieces
