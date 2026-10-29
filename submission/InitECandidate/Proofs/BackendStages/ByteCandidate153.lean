import InitECandidate.Proofs.BackendStages.BytePiecesData686
import InitECandidate.Proofs.BackendStages.BytePiecesData687
import InitECandidate.Proofs.BackendStages.BytePiecesData688
import InitECandidate.Proofs.BackendStages.BytePiecesData689
import InitECandidate.Proofs.BackendStages.BytePiecesData690
import InitECandidate.Bytes153
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate153_eq : InitECandidate.bytes153 = [piece686_1, piece687_0, piece688_0, piece689_0, piece690_0].flatten := by
  rw [piece686_1_eq, piece687_0_eq, piece688_0_eq, piece689_0_eq, piece690_0_eq]
  rfl
#print axioms candidate153_eq
end InitECandidate.Proofs.BackendStages.BytePieces
