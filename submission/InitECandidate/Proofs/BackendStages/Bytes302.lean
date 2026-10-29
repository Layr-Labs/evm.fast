import InitECandidate.Proofs.BackendStages.Padded302
import InitECandidate.Proofs.BackendStages.BytesData302
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes302_eq : (Padded302.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes302 := by
  with_unfolding_all rfl
#print axioms sectionBytes302_eq
end InitECandidate.Proofs.BackendStages
