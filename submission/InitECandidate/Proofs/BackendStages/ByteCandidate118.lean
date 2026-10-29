import InitECandidate.Proofs.BackendStages.BytePiecesData611
import InitECandidate.Proofs.BackendStages.BytePiecesData612
import InitECandidate.Proofs.BackendStages.BytePiecesData613
import InitECandidate.Proofs.BackendStages.BytePiecesData614
import InitECandidate.Proofs.BackendStages.BytePiecesData615
import InitECandidate.Proofs.BackendStages.BytePiecesData616
import InitECandidate.Bytes118
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate118_eq : InitECandidate.bytes118 = [piece611_1, piece612_0, piece613_0, piece614_0, piece615_0, piece616_0].flatten := by
  rw [piece611_1_eq, piece612_0_eq, piece613_0_eq, piece614_0_eq, piece615_0_eq, piece616_0_eq]
  rfl
#print axioms candidate118_eq
end InitECandidate.Proofs.BackendStages.BytePieces
