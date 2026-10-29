import InitECandidate.Proofs.BackendStages.Padded399
import InitECandidate.Proofs.BackendStages.BytesData399
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes399_eq : (Padded399.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes399 := by
  with_unfolding_all rfl
#print axioms sectionBytes399_eq
end InitECandidate.Proofs.BackendStages
