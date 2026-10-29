import InitECandidate.Proofs.BackendStages.Padded661
import InitECandidate.Proofs.BackendStages.BytesData661
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes661_eq : (Padded661.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes661 := by
  with_unfolding_all rfl
#print axioms sectionBytes661_eq
end InitECandidate.Proofs.BackendStages
