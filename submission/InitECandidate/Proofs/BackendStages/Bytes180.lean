import InitECandidate.Proofs.BackendStages.Padded180
import InitECandidate.Proofs.BackendStages.BytesData180
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes180_eq : (Padded180.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes180 := by
  with_unfolding_all rfl
#print axioms sectionBytes180_eq
end InitECandidate.Proofs.BackendStages
