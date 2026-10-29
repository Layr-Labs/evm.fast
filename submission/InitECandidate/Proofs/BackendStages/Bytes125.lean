import InitECandidate.Proofs.BackendStages.Padded125
import InitECandidate.Proofs.BackendStages.BytesData125
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes125_eq : (Padded125.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes125 := by
  with_unfolding_all rfl
#print axioms sectionBytes125_eq
end InitECandidate.Proofs.BackendStages
