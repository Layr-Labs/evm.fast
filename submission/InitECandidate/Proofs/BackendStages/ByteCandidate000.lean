import InitECandidate.Proofs.BackendStages.BytePiecesData0
import InitECandidate.Proofs.BackendStages.BytePiecesData1
import InitECandidate.Proofs.BackendStages.BytePiecesData2
import InitECandidate.Proofs.BackendStages.BytePiecesData4
import InitECandidate.Proofs.BackendStages.BytePiecesData5
import InitECandidate.Proofs.BackendStages.BytePiecesData6
import InitECandidate.Proofs.BackendStages.BytePiecesData64
import InitECandidate.Proofs.BackendStages.BytePiecesData65
import InitECandidate.Bytes000
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate000_eq : InitECandidate.bytes000 = [piece0_0, piece1_0, piece2_0, piece4_0, piece5_0, piece6_0, piece64_0, piece65_0].flatten := by
  rw [piece0_0_eq, piece1_0_eq, piece2_0_eq, piece4_0_eq, piece5_0_eq, piece6_0_eq, piece64_0_eq, piece65_0_eq]
  rfl
#print axioms candidate000_eq
end InitECandidate.Proofs.BackendStages.BytePieces
