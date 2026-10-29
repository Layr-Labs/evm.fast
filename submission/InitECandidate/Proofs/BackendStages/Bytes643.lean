import InitECandidate.Proofs.BackendStages.Padded643
import InitECandidate.Proofs.BackendStages.BytesData643
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes643_eq : (Padded643.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes643 := by
  with_unfolding_all rfl
#print axioms sectionBytes643_eq
end InitECandidate.Proofs.BackendStages
