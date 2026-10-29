import InitECandidate.Proofs.BackendStages.Padded316
import InitECandidate.Proofs.BackendStages.BytesData316
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes316_eq : (Padded316.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes316 := by
  with_unfolding_all rfl
#print axioms sectionBytes316_eq
end InitECandidate.Proofs.BackendStages
