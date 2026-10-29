import InitECandidate.Proofs.BackendStages.Padded451
import InitECandidate.Proofs.BackendStages.BytesData451
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes451_eq : (Padded451.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes451 := by
  with_unfolding_all rfl
#print axioms sectionBytes451_eq
end InitECandidate.Proofs.BackendStages
