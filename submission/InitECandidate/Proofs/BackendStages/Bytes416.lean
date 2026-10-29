import InitECandidate.Proofs.BackendStages.Padded416
import InitECandidate.Proofs.BackendStages.BytesData416
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes416_eq : (Padded416.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes416 := by
  with_unfolding_all rfl
#print axioms sectionBytes416_eq
end InitECandidate.Proofs.BackendStages
