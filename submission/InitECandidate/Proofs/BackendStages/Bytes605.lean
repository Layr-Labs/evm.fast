import InitECandidate.Proofs.BackendStages.Padded605
import InitECandidate.Proofs.BackendStages.BytesData605
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes605_eq : (Padded605.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes605 := by
  with_unfolding_all rfl
#print axioms sectionBytes605_eq
end InitECandidate.Proofs.BackendStages
