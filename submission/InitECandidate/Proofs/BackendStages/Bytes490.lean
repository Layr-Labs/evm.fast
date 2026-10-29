import InitECandidate.Proofs.BackendStages.Padded490
import InitECandidate.Proofs.BackendStages.BytesData490
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes490_eq : (Padded490.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes490 := by
  with_unfolding_all rfl
#print axioms sectionBytes490_eq
end InitECandidate.Proofs.BackendStages
