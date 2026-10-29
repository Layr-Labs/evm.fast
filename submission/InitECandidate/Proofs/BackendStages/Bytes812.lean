import InitECandidate.Proofs.BackendStages.Padded812
import InitECandidate.Proofs.BackendStages.BytesData812
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes812_eq : (Padded812.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes812 := by
  with_unfolding_all rfl
#print axioms sectionBytes812_eq
end InitECandidate.Proofs.BackendStages
