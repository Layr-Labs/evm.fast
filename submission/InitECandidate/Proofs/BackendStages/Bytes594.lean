import InitECandidate.Proofs.BackendStages.Padded594
import InitECandidate.Proofs.BackendStages.BytesData594
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes594_eq : (Padded594.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes594 := by
  with_unfolding_all rfl
#print axioms sectionBytes594_eq
end InitECandidate.Proofs.BackendStages
