import InitECandidate.Proofs.BackendStages.Padded567
import InitECandidate.Proofs.BackendStages.BytesData567
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes567_eq : (Padded567.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes567 := by
  with_unfolding_all rfl
#print axioms sectionBytes567_eq
end InitECandidate.Proofs.BackendStages
