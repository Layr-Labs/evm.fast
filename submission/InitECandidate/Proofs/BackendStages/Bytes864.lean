import InitECandidate.Proofs.BackendStages.Padded864
import InitECandidate.Proofs.BackendStages.BytesData864
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes864_eq : (Padded864.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes864 := by
  with_unfolding_all rfl
#print axioms sectionBytes864_eq
end InitECandidate.Proofs.BackendStages
